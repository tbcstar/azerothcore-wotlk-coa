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

#include "Chat.h"
#include "CommandScript.h"
#include "Common.h"
#include "GameTime.h"
#include "GitRevision.h"
#include "Log.h"
#include "MapMgr.h"
#include "ModuleMgr.h"
#include "MotdMgr.h"
#include "MySQLThreading.h"
#include "RBAC.h"
#include "Realm.h"
#include "StringConvert.h"
#include "UpdateTime.h"
#include "VMapFactory.h"
#include "VMapMgr2.h"
#include "WorldSessionMgr.h"
#include <boost/version.hpp>
#include <filesystem>
#include <numeric>
#include <openssl/crypto.h>
#include <openssl/opensslv.h>

using namespace Acore::ChatCommands;

class server_commandscript : public CommandScript
{
public:
    server_commandscript() : CommandScript("server_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable serverIdleRestartCommandTable =
        {
            { "cancel",       HandleServerShutDownCancelCommand, rbac::RBAC_PERM_COMMAND_SERVER_IDLERESTART_CANCEL, Console::Yes },
            { "",             HandleServerIdleRestartCommand,    rbac::RBAC_PERM_COMMAND_SERVER_IDLERESTART,        Console::Yes }
        };

        static ChatCommandTable serverIdleShutdownCommandTable =
        {
            { "cancel",       HandleServerShutDownCancelCommand, rbac::RBAC_PERM_COMMAND_SERVER_IDLESHUTDOWN_CANCEL, Console::Yes },
            { "",             HandleServerIdleShutDownCommand,   rbac::RBAC_PERM_COMMAND_SERVER_IDLESHUTDOWN,        Console::Yes }
        };

        static ChatCommandTable serverRestartCommandTable =
        {
            { "cancel",       HandleServerShutDownCancelCommand, rbac::RBAC_PERM_COMMAND_SERVER_RESTART_CANCEL, Console::Yes },
            { "",             HandleServerRestartCommand,        rbac::RBAC_PERM_COMMAND_SERVER_RESTART,        Console::Yes }
        };

        static ChatCommandTable serverShutdownCommandTable =
        {
            { "cancel",       HandleServerShutDownCancelCommand, rbac::RBAC_PERM_COMMAND_SERVER_SHUTDOWN_CANCEL, Console::Yes },
            { "",             HandleServerShutDownCommand,       rbac::RBAC_PERM_COMMAND_SERVER_SHUTDOWN,        Console::Yes }
        };

        static ChatCommandTable serverSetCommandTable =
        {
            { "loglevel",     HandleServerSetLogLevelCommand,    rbac::RBAC_PERM_COMMAND_SERVER_SET_LOGLEVEL, Console::Yes },
            { "motd",         HandleServerSetMotdCommand,        rbac::RBAC_PERM_COMMAND_SERVER_SET_MOTD,     Console::Yes },
            { "closed",       HandleServerSetClosedCommand,      rbac::RBAC_PERM_COMMAND_SERVER_SET_CLOSED,   Console::Yes },
            { "security",     HandleServerSetSecurityCommand,    rbac::RBAC_PERM_COMMAND_SERVER_SET_SECURITY, Console::Yes },
        };

        static ChatCommandTable serverCommandTable =
        {
            { "corpses",      HandleServerCorpsesCommand,        rbac::RBAC_PERM_COMMAND_SERVER_CORPSES,  Console::Yes },
            { "debug",        HandleServerDebugCommand,          rbac::RBAC_PERM_COMMAND_SERVER_DEBUG,    Console::Yes },
            { "exit",         HandleServerExitCommand,           rbac::RBAC_PERM_COMMAND_SERVER_EXIT,     Console::Yes },
            { "idlerestart",  serverIdleRestartCommandTable },
            { "idleshutdown", serverIdleShutdownCommandTable },
            { "info",         HandleServerInfoCommand,           rbac::RBAC_PERM_COMMAND_SERVER_INFO,     Console::Yes },
            { "motd",         HandleServerMotdCommand,           rbac::RBAC_PERM_COMMAND_SERVER_MOTD,     Console::Yes },
            { "restart",      serverRestartCommandTable },
            { "shutdown",     serverShutdownCommandTable },
            { "set",          serverSetCommandTable }
        };

        static ChatCommandTable commandTable =
        {
            { "server", serverCommandTable }
        };

        return commandTable;
    }

    // Triggering corpses expire check in world
    static bool HandleServerCorpsesCommand(ChatHandler* /*handler*/)
    {
        sMapMgr->DoForAllMaps([](Map* map)
        {
            map->RemoveOldCorpses();
        });
        return true;
    }

    static bool HandleServerDebugCommand(ChatHandler* handler)
    {
        uint16 worldPort = uint16(sWorld->getIntConfig(CONFIG_PORT_WORLD));
        std::string dbPortOutput;

        {
            uint16 dbPort = 0;
            if (QueryResult res = LoginDatabase.Query("SELECT port FROM realmlist WHERE id = {}", realm.Id.Realm))
                dbPort = (*res)[0].Get<uint16>();

            if (dbPort)
                dbPortOutput = Acore::StringFormat("Realmlist（服务器 ID：{}）已配置在端口 {}", realm.Id.Realm, dbPort);
            else
                dbPortOutput = Acore::StringFormat("在 `realmlist` 表中未找到服务器 ID {}。请检查你的配置", realm.Id.Realm);
        }

        HandleServerInfoCommand(handler);

        handler->PSendSysMessage("使用 SSL 版本：{}（库：{}）", OPENSSL_VERSION_TEXT, OpenSSL_version(OPENSSL_VERSION));
        handler->PSendSysMessage("使用 Boost 版本：{}.{}.{}", BOOST_VERSION / 100000, BOOST_VERSION / 100 % 1000, BOOST_VERSION % 100);
        handler->PSendSysMessage("使用 CMake 版本：{}", GitRevision::GetCMakeVersion());

        handler->PSendSysMessage("使用 MySQL 版本：{}", MySQL::GetLibraryVersion());
        handler->PSendSysMessage("找到 MySQL 可执行文件：{}", GitRevision::GetMySQLExecutable());

        handler->PSendSysMessage("编译于：{}", GitRevision::GetHostOSVersion());

        handler->PSendSysMessage("Worldserver 监听端口 {}", worldPort);
        handler->PSendSysMessage("{}", dbPortOutput);

        bool vmapIndoorCheck = sWorld->getBoolConfig(CONFIG_VMAP_INDOOR_CHECK);
        bool vmapLOSCheck = VMAP::VMapFactory::createOrGetVMapMgr()->isLineOfSightCalcEnabled();
        bool vmapHeightCheck = VMAP::VMapFactory::createOrGetVMapMgr()->isHeightCalcEnabled();

        bool mmapEnabled = sWorld->getBoolConfig(CONFIG_ENABLE_MMAPS);

        std::string dataDir = sWorld->GetDataPath();
        std::vector<std::string> subDirs;
        subDirs.emplace_back("maps");
        if (vmapIndoorCheck || vmapLOSCheck || vmapHeightCheck)
        {
            handler->PSendSysMessage("VMAPs 状态：已启用。视线：{}，高度获取：{}，室内检测：{}", vmapLOSCheck, vmapHeightCheck, vmapIndoorCheck);
            subDirs.emplace_back("vmaps");
        }
        else
            handler->SendSysMessage("VMAPs 状态：已禁用");

        if (mmapEnabled)
        {
            handler->SendSysMessage("MMAPs 状态：已启用");
            subDirs.emplace_back("mmaps");
        }
        else
            handler->SendSysMessage("MMAPs 状态：已禁用");

        for (std::string const& subDir : subDirs)
        {
            std::filesystem::path mapPath(dataDir);
            mapPath /= subDir;

            if (!std::filesystem::exists(mapPath))
            {
                handler->PSendSysMessage("{} 目录不存在！使用路径：{}", subDir, mapPath.generic_string());
                continue;
            }

            auto end = std::filesystem::directory_iterator();
            std::size_t folderSize = std::accumulate(std::filesystem::directory_iterator(mapPath), end, std::size_t(0), [](std::size_t val, std::filesystem::path const& mapFile)
            {
                if (std::filesystem::is_regular_file(mapFile))
                    val += std::filesystem::file_size(mapFile);
                return val;
            });

            handler->PSendSysMessage("{} 目录位于 {}。总大小：{} 字节", subDir, mapPath.generic_string(), folderSize);
        }

        LocaleConstant defaultLocale = sWorld->GetDefaultDbcLocale();
        uint32 availableLocalesMask = (1 << defaultLocale);

        for (uint8 i = 0; i < TOTAL_LOCALES; ++i)
        {
            LocaleConstant locale = static_cast<LocaleConstant>(i);
            if (locale == defaultLocale)
                continue;

            if (sWorld->GetAvailableDbcLocale(locale) != defaultLocale)
                availableLocalesMask |= (1 << locale);
        }

        std::string availableLocales;
        for (uint8 i = 0; i < TOTAL_LOCALES; ++i)
        {
            if (!(availableLocalesMask & (1 << i)))
                continue;

            availableLocales += localeNames[i];
            if (i != TOTAL_LOCALES - 1)
                availableLocales += " ";
        }

        handler->PSendSysMessage("默认 DBC 语言区域：{}。\n所有可用的 DBC 语言区域：{}", localeNames[defaultLocale], availableLocales);

        handler->PSendSysMessage("使用世界数据库：{}", sWorld->GetDBVersion());
#ifdef MOD_PLAYERBOTS
        handler->PSendSysMessage("使用 Playerbots 数据库版本：{}", sWorld->GetPlayerbotsDBRevision());
#endif

        std::string lldb = "未找到任何更新！";
        if (QueryResult resL = LoginDatabase.Query("SELECT name FROM updates ORDER BY name DESC LIMIT 1"))
        {
            Field* fields = resL->Fetch();
            lldb = fields[0].Get<std::string>();
        }
        std::string lcdb = "未找到任何更新！";
        if (QueryResult resC = CharacterDatabase.Query("SELECT name FROM updates ORDER BY name DESC LIMIT 1"))
        {
            Field* fields = resC->Fetch();
            lcdb = fields[0].Get<std::string>();
        }
        std::string lwdb = "未找到任何更新！";
        if (QueryResult resW = WorldDatabase.Query("SELECT name FROM updates ORDER BY name DESC LIMIT 1"))
        {
            Field* fields = resW->Fetch();
            lwdb = fields[0].Get<std::string>();
        }

        handler->PSendSysMessage("最新的登录数据库更新：{}", lldb);
        handler->PSendSysMessage("最新的角色数据库更新：{}", lcdb);
        handler->PSendSysMessage("最新的世界数据库更新：{}", lwdb);

        handler->PSendSysMessage("登录数据库队列长度：{}", LoginDatabase.QueueSize());
        handler->PSendSysMessage("角色数据库队列长度：{}", CharacterDatabase.QueueSize());
        handler->PSendSysMessage("世界数据库队列长度：{}", WorldDatabase.QueueSize());
#ifdef MOD_PLAYERBOTS
        handler->PSendSysMessage("Playerbots 数据库队列长度：{}", PlayerbotsDatabase.QueueSize());
#endif

        if (Acore::Module::GetEnableModulesList().empty())
            handler->PSendSysMessage("未启用任何模块");
        else
            handler->PSendSysMessage("已启用模块清单：");

        for (auto const& modName : Acore::Module::GetEnableModulesList())
        {
            handler->PSendSysMessage("|- {}", modName);
        }

        return true;
    }

    static bool HandleServerInfoCommand(ChatHandler* handler)
    {
        std::string realmName = sWorld->GetRealmName();
        uint32 playerCount = sWorldSessionMgr->GetPlayerCount();
        uint32 activeSessionCount = sWorldSessionMgr->GetActiveSessionCount();
        uint32 queuedSessionCount = sWorldSessionMgr->GetQueuedSessionCount();
        uint32 connPeak = sWorldSessionMgr->GetMaxActiveSessionCount();

        handler->PSendSysMessage("{}", GitRevision::GetFullVersion());
        if (!queuedSessionCount)
            handler->PSendSysMessage("在线玩家：{}。世界中角色数：{}。", activeSessionCount, playerCount);
        else
            handler->PSendSysMessage("在线玩家：{}。世界中角色数：{}。队列：{}。", activeSessionCount, playerCount, queuedSessionCount);

        handler->PSendSysMessage("连接峰值：{}。", connPeak);
        handler->PSendSysMessage(LANG_COMMAND_SERVER_INFO_SECURITY, uint32(sWorld->GetPlayerSecurityLimit()));
        handler->PSendSysMessage(LANG_UPTIME, secsToTimeString(GameTime::GetUptime().count()));
        handler->PSendSysMessage("更新耗时：{}ms。最近 {} 次耗时汇总：", sWorldUpdateTime.GetLastUpdateTime(), sWorldUpdateTime.GetDatasetSize());
        handler->PSendSysMessage("|- 平均：{}ms", sWorldUpdateTime.GetAverageUpdateTime());
        handler->PSendSysMessage("|- 中位数：{}ms", sWorldUpdateTime.GetPercentile(50));
        handler->PSendSysMessage("|- 百分位（95、99、最大）：{}ms，{}ms，{}ms",
                                 sWorldUpdateTime.GetPercentile(95),
                                 sWorldUpdateTime.GetPercentile(99),
                                 sWorldUpdateTime.GetPercentile(100));

        //! Can't use sWorld->ShutdownMsg here in case of console command
        if (sWorld->IsShuttingDown())
            handler->PSendSysMessage(LANG_SHUTDOWN_TIMELEFT, secsToTimeString(sWorld->GetShutDownTimeLeft()).append("."));

        return true;
    }
    // Display the 'Message of the day' for the realm
    static bool HandleServerMotdCommand(ChatHandler* handler)
    {
        handler->PSendSysMessage(LANG_MOTD_CURRENT);
        for (uint32 i = 0; i < TOTAL_LOCALES; ++i)
            handler->PSendSysMessage(LANG_GENERIC_TWO_CURLIES_WITH_COLON, GetNameByLocaleConstant(LocaleConstant(i)), sMotdMgr->GetMotd(LocaleConstant(i)));
        return true;
    }

    static bool HandleServerShutDownCancelCommand(ChatHandler* /*handler*/)
    {
        sWorld->ShutdownCancel();

        return true;
    }

    static bool HandleServerShutDownCommand(ChatHandler* handler, std::string time, Optional<int32> exitCode, Tail reason)
    {
        std::wstring wReason   = std::wstring();
        std::string  strReason = std::string();

        if (time.empty())
        {
            return false;
        }

        if (Acore::StringTo<int32>(time).value_or(0) < 0)
        {
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        if (!reason.empty())
        {
            if (!Utf8toWStr(reason, wReason))
            {
                return false;
            }

            if (!WStrToUtf8(wReason, strReason))
            {
                return false;
            }
        }

        int32 delay = TimeStringToSecs(time);
        if (delay <= 0)
        {
            delay = Acore::StringTo<int32>(time).value_or(0);
        }

        if (delay <= 0)
        {
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        if (exitCode && *exitCode >= 0 && *exitCode <= 125)
        {
            sWorld->ShutdownServ(delay, 0, *exitCode);
        }
        else
        {
            sWorld->ShutdownServ(delay, 0, SHUTDOWN_EXIT_CODE, strReason);
        }

        return true;
    }

    static bool HandleServerRestartCommand(ChatHandler* handler, std::string time, Optional<int32> exitCode, Tail reason)
    {
        std::wstring wReason = std::wstring();
        std::string strReason    = std::string();

        if (time.empty())
        {
            return false;
        }

        if (Acore::StringTo<int32>(time).value_or(0) < 0)
        {
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        if (!reason.empty())
        {
            if (!Utf8toWStr(reason, wReason))
            {
                return false;
            }

            if (!WStrToUtf8(wReason, strReason))
            {
                return false;
            }
        }

        int32 delay = TimeStringToSecs(time);
        if (delay <= 0)
        {
            delay = Acore::StringTo<int32>(time).value_or(0);
        }

        if (delay <= 0)
        {
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        if (exitCode && *exitCode >= 0 && *exitCode <= 125)
        {
            sWorld->ShutdownServ(delay, SHUTDOWN_MASK_RESTART, *exitCode);
        }
        else
        {
            sWorld->ShutdownServ(delay, SHUTDOWN_MASK_RESTART, RESTART_EXIT_CODE, strReason);
        }

        return true;
    }

    static bool HandleServerIdleRestartCommand(ChatHandler* handler, std::string time, Optional<int32> exitCode, Tail reason)
    {
        std::wstring wReason   = std::wstring();
        std::string  strReason = std::string();

        if (time.empty())
        {
            return false;
        }

        if (Acore::StringTo<int32>(time).value_or(0) < 0)
        {
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        if (!reason.empty())
        {
            if (!Utf8toWStr(reason, wReason))
            {
                return false;
            }

            if (!WStrToUtf8(wReason, strReason))
            {
                return false;
            }
        }

        int32 delay = TimeStringToSecs(time);
        if (delay <= 0)
        {
            delay = Acore::StringTo<int32>(time).value_or(0);
        }

        if (delay <= 0)
        {
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        if (exitCode && *exitCode >= 0 && *exitCode <= 125)
        {
            sWorld->ShutdownServ(delay, SHUTDOWN_MASK_RESTART | SHUTDOWN_MASK_IDLE, *exitCode);
        }
        else
        {
            sWorld->ShutdownServ(delay, SHUTDOWN_MASK_RESTART | SHUTDOWN_MASK_IDLE, RESTART_EXIT_CODE, strReason);
        }

        return true;
    }

    static bool HandleServerIdleShutDownCommand(ChatHandler* handler, std::string time, Optional<int32> exitCode, Tail reason)
    {
        std::wstring wReason   = std::wstring();
        std::string  strReason = std::string();

        if (time.empty())
        {
            return false;
        }

        if (Acore::StringTo<int32>(time).value_or(0) < 0)
        {
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        if (!reason.empty())
        {
            if (!Utf8toWStr(reason, wReason))
            {
                return false;
            }

            if (!WStrToUtf8(wReason, strReason))
            {
                return false;
            }
        }

        int32 delay = TimeStringToSecs(time);
        if (delay <= 0)
        {
            delay = Acore::StringTo<int32>(time).value_or(0);
        }

        if (delay <= 0)
        {
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        if (exitCode && *exitCode >= 0 && *exitCode <= 125)
        {
            sWorld->ShutdownServ(delay, SHUTDOWN_MASK_IDLE, *exitCode);
        }
        else
        {
            sWorld->ShutdownServ(delay, SHUTDOWN_MASK_IDLE, SHUTDOWN_EXIT_CODE, strReason);
        }

        return true;
    }

    // Exit the realm
    static bool HandleServerExitCommand(ChatHandler* handler)
    {
        handler->SendSysMessage(LANG_COMMAND_EXIT);
        World::StopNow(SHUTDOWN_EXIT_CODE);
        return true;
    }

    // Define the 'Message of the day' for the realm
    static bool HandleServerSetMotdCommand(ChatHandler* handler, Optional<int32> realmId, std::string locale, Tail motd)
    {
        std::wstring wMotd = std::wstring();
        std::string strMotd = std::string();

        // Default realmId to the current realm if not provided
        if (!realmId)
            realmId = static_cast<int32>(realm.Id.Realm);

        // Determine the locale; default to "enUS" if not provided
        LocaleConstant localeConstant;
        if (IsLocaleValid(locale))
            localeConstant = GetLocaleByName(locale);
        else
        {
            handler->SendErrorMessage("语言区域（{}）无效。可用值：enUS、koKR、frFR、deDE、zhCN、zhWE、esES、esMX、ruRU。", locale);
            return false;
        }

        if (motd.empty())
            return false;

        // Convert the concatenated motdString to UTF-8 and ensure encoding consistency
        if (!Utf8toWStr(motd, wMotd))
            return false;

        if (!WStrToUtf8(wMotd, strMotd))
            return false;

        // Start a transaction for the database operations
        LoginDatabaseTransaction trans = LoginDatabase.BeginTransaction();

        if (localeConstant == LOCALE_enUS)
        {
            // Insert or update in the main motd table for enUS
            LoginDatabasePreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_REP_MOTD);
            stmt->SetData(0, realmId.value());  // realmId for insertion
            stmt->SetData(1, strMotd);          // motd text for insertion
            trans->Append(stmt);
        }
        else
        {
            // Insert or update in the motd_localized table for other locales
            LoginDatabasePreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_REP_MOTD_LOCALE);
            stmt->SetData(0, realmId.value());  // realmId for insertion
            stmt->SetData(1, locale);           // locale for insertion
            stmt->SetData(2, strMotd);          // motd text for insertion
            trans->Append(stmt);
        }

        // Commit the transaction & update db
        LoginDatabase.CommitTransaction(trans);

        sMotdMgr->SetMotd(strMotd, localeConstant);
        handler->PSendSysMessage(LANG_MOTD_NEW, realmId.value(), locale, strMotd);
        return true;
    }

    // Set whether we accept new clients
    static bool HandleServerSetClosedCommand(ChatHandler* handler, Optional<std::string> args)
    {
        if (StringStartsWith("on", *args))
        {
            handler->SendSysMessage(LANG_WORLD_CLOSED);
            sWorld->SetClosed(true);
            return true;
        }
        else if (StringStartsWith("off", *args))
        {
            handler->SendSysMessage(LANG_WORLD_OPENED);
            sWorld->SetClosed(false);
            return true;
        }

        handler->SendErrorMessage(LANG_USE_BOL);
        return false;
    }

    // Set the minimum security level allowed to log into this realm (realmlist.allowedSecurityLevel)
    static bool HandleServerSetSecurityCommand(ChatHandler* handler, uint8 level)
    {
        if (level > SEC_ADMINISTRATOR)
        {
            handler->SendErrorMessage(LANG_COMMAND_SERVER_SET_SECURITY_ERROR, SEC_PLAYER, SEC_ADMINISTRATOR);
            return false;
        }

        LoginDatabasePreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_UPD_REALMLIST_SECURITY_LEVEL);
        stmt->SetData(0, level);
        stmt->SetData(1, realm.Id.Realm);
        LoginDatabase.Execute(stmt);

        // Apply live; raising the limit kicks any now-disallowed sessions.
        sWorld->SetPlayerSecurityLimit(AccountTypes(level));

        handler->PSendSysMessage(LANG_COMMAND_SERVER_SET_SECURITY, level);
        return true;
    }

    // Set the level of logging
    static bool HandleServerSetLogLevelCommand(ChatHandler* /*handler*/, bool isLogger, std::string const& name, int32 level)
    {
        sLog->SetLogLevel(name, level, isLogger);
        return true;
    }
};

void AddSC_server_commandscript()
{
    new server_commandscript();
}
