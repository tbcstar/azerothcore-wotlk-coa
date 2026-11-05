/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/**
* @file cs_mmaps.cpp
* @brief .mmap related commands
*
* This file contains the CommandScripts for all
* mmap sub-commands
*/

#include "CellImpl.h"
#include "Chat.h"
#include "CommandScript.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "MMapMgr.h"
#include "Map.h"
#include "PathGenerator.h"
#include "Player.h"
#include "RBAC.h"
#include "TargetedMovementGenerator.h"

using namespace Acore::ChatCommands;

class mmaps_commandscript : public CommandScript
{
public:
    mmaps_commandscript() : CommandScript("mmaps_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable mmapCommandTable =
        {
            { "loadedtiles", HandleMmapLoadedTilesCommand, rbac::RBAC_PERM_COMMAND_MMAP_LOADEDTILES, Console::No },
            { "loc",         HandleMmapLocCommand,         rbac::RBAC_PERM_COMMAND_MMAP_LOC,         Console::No },
            { "path",        HandleMmapPathCommand,        rbac::RBAC_PERM_COMMAND_MMAP_PATH,        Console::No },
            { "stats",       HandleMmapStatsCommand,       rbac::RBAC_PERM_COMMAND_MMAP_STATS,       Console::No },
            { "testarea",    HandleMmapTestArea,           rbac::RBAC_PERM_COMMAND_MMAP_TESTAREA,    Console::No }
        };

        static ChatCommandTable commandTable =
        {
            { "mmap", mmapCommandTable }
        };
        return commandTable;
    }

    static bool HandleMmapPathCommand(ChatHandler* handler, Optional<std::string> param)
    {
        Map* map = handler->GetSession()->GetPlayer()->GetMap();
        if (!map->GetMapCollisionData().GetMMapData().GetNavMesh())
        {
            handler->PSendSysMessage("当前地图未加载 NavMesh。");
            return true;
        }

        handler->PSendSysMessage("mmap 路径：");

        // units
        Player* player = handler->GetSession()->GetPlayer();
        Unit* target = handler->getSelectedUnit();
        if (!player || !target)
        {
            handler->PSendSysMessage("目标/来源选择无效。");
            return true;
        }

        bool useStraightPath = false;
        bool useRaycast = false;
        if (param)
        {
            auto paramValue = param.value();
            if (paramValue.starts_with("true"))
            {
                useStraightPath = true;
            }

            if (paramValue.starts_with("line") || paramValue.starts_with("ray") || paramValue.starts_with("raycast"))
            {
                useRaycast = true;
            }
        }

        // unit locations
        float x, y, z;
        player->GetPosition(x, y, z);

        // path
        PathGenerator path(target);
        path.SetUseStraightPath(useStraightPath);
        path.SetUseRaycast(useRaycast);
        bool result = path.CalculatePath(x, y, z, false);

        Movement::PointsArray const& pointPath = path.GetPath();
        handler->PSendSysMessage("{} 到 {} 的路径：", target->GetName(), player->GetName());
        handler->PSendSysMessage("正在构建：{}", useStraightPath ? "StraightPath" : useRaycast ? "Raycast" : "SmoothPath");
        handler->PSendSysMessage("结果：{} - 长度：{} - 类型：{}", (result ? "true" : "false"), pointPath.size(), path.GetPathType());

        G3D::Vector3 const& start = path.GetStartPosition();
        G3D::Vector3 const& end = path.GetEndPosition();
        G3D::Vector3 const& actualEnd = path.GetActualEndPosition();

        handler->PSendSysMessage("起点位置     ({}, {}, {})", start.x, start.y, start.z);
        handler->PSendSysMessage("终点位置       ({}, {}, {})", end.x, end.y, end.z);
        handler->PSendSysMessage("实际终点位置 ({}, {}, {})", actualEnd.x, actualEnd.y, actualEnd.z);

        if (!player->IsGameMaster())
            handler->PSendSysMessage("开启 GM 模式即可看到路径点。");

        for (auto i : pointPath)
            player->SummonCreature(VISUAL_WAYPOINT, i.x, i.y, i.z, 0, TEMPSUMMON_TIMED_DESPAWN, 9000);

        return true;
    }

    static bool HandleMmapLocCommand(ChatHandler* handler)
    {
        handler->PSendSysMessage("mmap 地块：");

        // grid tile location
        Player* player = handler->GetSession()->GetPlayer();

        GridCoord const gridCoord = Acore::ComputeGridCoord(player->GetPositionX(), player->GetPositionY());

        handler->PSendSysMessage("{}{}{}.mmtile", player->GetMapId(), gridCoord.x_coord, gridCoord.y_coord);

        std::string fileName = Acore::StringFormat(MMAP::TILE_FILE_NAME_FORMAT, sConfigMgr->GetOption<std::string>("DataDir", "."), player->GetMapId(), gridCoord.x_coord, gridCoord.y_coord);
        FILE* file = fopen(fileName.c_str(), "rb");
        if (!file)
        {
            LOG_DEBUG("maps", "MMAP:loadMap: Could not open mmtile file '{}'", fileName);
            return false;
        }

        // read header
        MmapTileHeader fileHeader;
        if (fread(&fileHeader, sizeof(MmapTileHeader), 1, file) != 1 || fileHeader.mmapMagic != MMAP_MAGIC)
        {
            LOG_ERROR("maps", "MMAP:loadMap: Bad header in mmap {:03}{:02}{:02}.mmtile", player->GetMapId(), gridCoord.x_coord, gridCoord.y_coord);
            fclose(file);
            return false;
        }
        fclose(file);
        handler->PSendSysMessage("使用的 Recast 配置：");
        handler->PSendSysMessage("- 可行走坡度角：{}", fileHeader.recastConfig.walkableSlopeAngle);

        const float cellHeight = fileHeader.recastConfig.cellSizeVertical;
        handler->PSendSysMessage("- 可行走高度：{}（{} 单位）", fileHeader.recastConfig.walkableHeight * cellHeight, fileHeader.recastConfig.walkableHeight);
        handler->PSendSysMessage("- 可行走攀爬：{}（{} 单位）", fileHeader.recastConfig.walkableClimb * cellHeight, fileHeader.recastConfig.walkableClimb);
        handler->PSendSysMessage("- 可行走半径：{}（{} 单位）", fileHeader.recastConfig.walkableRadius * cellHeight, fileHeader.recastConfig.walkableRadius);

        handler->PSendSysMessage("- 最大简化误差：{}", fileHeader.recastConfig.maxSimplificationError);
        handler->PSendSysMessage("- 地图每边顶点数：{}", fileHeader.recastConfig.vertexPerMapEdge);
        handler->PSendSysMessage("- 地块每边顶点数：{}", fileHeader.recastConfig.vertexPerTileEdge);
        handler->PSendSysMessage("- 地图每边地块数：{}", fileHeader.recastConfig.tilesPerMapEdge);
        handler->PSendSysMessage("- 基础单位尺寸：{}", fileHeader.recastConfig.baseUnitDim);
        handler->PSendSysMessage("- 水平单元尺寸：{}", fileHeader.recastConfig.cellSizeHorizontal);
        handler->PSendSysMessage("- 垂直单元尺寸：{}", fileHeader.recastConfig.cellSizeVertical);

        handler->PSendSysMessage("网格坐标 [{}, {}]", gridCoord.x_coord, gridCoord.y_coord);

        Map* map = handler->GetSession()->GetPlayer()->GetMap();

        // calculate navmesh tile location
        dtNavMesh const* navmesh = map->GetMapCollisionData().GetMMapData().GetNavMesh();
        dtNavMeshQuery const* navmeshquery = map->GetMapCollisionData().GetMMapData().GetNavMeshQuery();
        if (!navmesh || !navmeshquery)
        {
            handler->PSendSysMessage("当前地图未加载 NavMesh。");
            return true;
        }

        float const* min = navmesh->getParams()->orig;
        float x, y, z;
        player->GetPosition(x, y, z);
        float location[VERTEX_SIZE] = {y, z, x};
        float extents[VERTEX_SIZE] = {3.0f, 5.0f, 3.0f};

        int32 tilex = int32((y - min[0]) / SIZE_OF_GRIDS);
        int32 tiley = int32((x - min[2]) / SIZE_OF_GRIDS);

        handler->PSendSysMessage("计算   [{}, {}]", tilex, tiley);

        // navmesh poly -> navmesh tile location
        dtQueryFilterExt filter = dtQueryFilterExt();
        dtPolyRef polyRef = INVALID_POLYREF;
        if (dtStatusFailed(navmeshquery->findNearestPoly(location, extents, &filter, &polyRef, nullptr)))
        {
            handler->PSendSysMessage("Dt     [??,??]（多边形无效，可能未加载地块）");
            return true;
        }

        if (polyRef == INVALID_POLYREF)
            handler->PSendSysMessage("Dt     [??, ??]（多边形无效，可能未加载地块）");
        else
        {
            dtMeshTile const* tile;
            dtPoly const* poly;
            if (dtStatusSucceed(navmesh->getTileAndPolyByRef(polyRef, &tile, &poly)))
            {
                if (tile)
                {
                    handler->PSendSysMessage("Dt     [{},{}]", tile->header->x, tile->header->y);
                    return false;
                }
            }

            handler->PSendSysMessage("Dt     [??,??]（未加载地块）");
        }

        return true;
    }

    static bool HandleMmapLoadedTilesCommand(ChatHandler* handler)
    {
        Map* map = handler->GetSession()->GetPlayer()->GetMap();
        dtNavMesh const* navmesh = map->GetMapCollisionData().GetMMapData().GetNavMesh();
        dtNavMeshQuery const* navmeshquery = map->GetMapCollisionData().GetMMapData().GetNavMeshQuery();
        if (!navmesh || !navmeshquery)
        {
            handler->PSendSysMessage("当前地图未加载 NavMesh。");
            return true;
        }

        handler->PSendSysMessage("mmap 已加载地块：");

        for (int32 i = 0; i < navmesh->getMaxTiles(); ++i)
        {
            dtMeshTile const* tile = navmesh->getTile(i);
            if (!tile || !tile->header)
                continue;

            handler->PSendSysMessage("[{}, {}]", tile->header->x, tile->header->y);
        }

        return true;
    }

    static bool HandleMmapStatsCommand(ChatHandler* handler)
    {
        Map* map = handler->GetSession()->GetPlayer()->GetMap();

        //handler->PSendSysMessage("mmap 统计：");
        //handler->PSendSysMessage("  全局 mmap 寻路已{}", sDisableMgr->IsPathfindingEnabled(mapId) ? "en" : "dis");
        //MMAP::MMapMgr* manager = MMAP::MMapFactory::createOrGetMMapMgr();
        //handler->PSendSysMessage(" 已加载 {} 张地图，共 {} 个地块", manager->getLoadedMapsCount(), manager->getLoadedTilesCount());

        dtNavMesh const* navmesh = map->GetMapCollisionData().GetMMapData().GetNavMesh();
        if (!navmesh)
        {
            handler->PSendSysMessage("当前地图未加载 NavMesh。");
            return true;
        }

        uint32 tileCount = 0;
        uint32 nodeCount = 0;
        uint32 polyCount = 0;
        uint32 vertCount = 0;
        uint32 triCount = 0;
        uint32 triVertCount = 0;
        uint32 dataSize = 0;
        for (int32 i = 0; i < navmesh->getMaxTiles(); ++i)
        {
            dtMeshTile const* tile = navmesh->getTile(i);
            if (!tile || !tile->header)
                continue;

            tileCount++;
            nodeCount += tile->header->bvNodeCount;
            polyCount += tile->header->polyCount;
            vertCount += tile->header->vertCount;
            triCount += tile->header->detailTriCount;
            triVertCount += tile->header->detailVertCount;
            dataSize += tile->dataSize;
        }

        handler->PSendSysMessage("导航网格统计：");
        handler->PSendSysMessage(" 已加载 {} 个地块", tileCount);
        handler->PSendSysMessage(" {} 个 BVTree 节点", nodeCount);
        handler->PSendSysMessage(" {} 个多边形（{} 个顶点）", polyCount, vertCount);
        handler->PSendSysMessage(" {} 个三角形（{} 个顶点）", triCount, triVertCount);
        handler->PSendSysMessage(" {} MB 数据（不含指针）", ((float)dataSize / sizeof(unsigned char)) / 1048576);

        return true;
    }

    static bool HandleMmapTestArea(ChatHandler* handler)
    {
        float radius = 40.0f;
        WorldObject* object = handler->GetSession()->GetPlayer();

        // Get Creatures
        std::list<Creature*> creatureList;
        Acore::AnyUnitInObjectRangeCheck go_check(object, radius);
        Acore::CreatureListSearcher<Acore::AnyUnitInObjectRangeCheck> go_search(object, creatureList, go_check);
        Cell::VisitObjects(object, go_search, radius);

        if (!creatureList.empty())
        {
            handler->PSendSysMessage("找到 {} 个生物。", creatureList.size());

            uint32 paths = 0;
            uint32 uStartTime = getMSTime();

            float gx, gy, gz;
            object->GetPosition(gx, gy, gz);
            for (std::list<Creature*>::iterator itr = creatureList.begin(); itr != creatureList.end(); ++itr)
            {
                PathGenerator path(*itr);
                path.CalculatePath(gx, gy, gz);
                ++paths;
            }

            uint32 uPathLoadTime = getMSTimeDiff(uStartTime, getMSTime());
            handler->PSendSysMessage("在 {} 毫秒内生成 {} 条路径", paths, uPathLoadTime);
        }
        else
            handler->PSendSysMessage("{} 码范围内没有生物。", radius);

        return true;
    }
};

void AddSC_mmaps_commandscript()
{
    new mmaps_commandscript();
}
