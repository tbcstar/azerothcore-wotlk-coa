#ifndef COA_LOTTERY_ADVERTISING_H
#define COA_LOTTERY_ADVERTISING_H

#include <algorithm>
#include <array>
#include <cstdint>
#include <string>
#include <string_view>

namespace CoALottery
{
    constexpr uint32_t GallywixMap = 0;
    constexpr float GallywixX = -8787.7705f;
    constexpr float GallywixY = 640.43396f;
    constexpr float GallywixZ = 96.12781f;
    constexpr float GoldilocksX = -8788.967f;
    constexpr float GoldilocksY = 643.0418f;
    constexpr float GoldilocksZ = 94.944855f;

    struct LotteryLocation
    {
        uint32_t map;
        float gallywixX, gallywixY, gallywixZ;
        float goldilocksX, goldilocksY, goldilocksZ;
        float orientation;
    };

    constexpr LotteryLocation StormwindLotteryLocation =
        { GallywixMap, GallywixX, GallywixY, GallywixZ, GoldilocksX, GoldilocksY, GoldilocksZ, 3.14159265f };
    constexpr LotteryLocation OrgrimmarLotteryLocation =
        { 1, 1621.1122f, -4419.4966f, 14.876221f, 1623.0135f, -4417.805f, 14.7874975f, 4.71238898f };

    inline float GoldilocksScale(uint32_t duration, uint64_t remaining)
    {
        if (!duration)
            return 0.5f;
        return 1.5f - float(std::min<uint64_t>(remaining, duration)) / float(duration);
    }

    constexpr auto AdvertisementLines = std::to_array<std::string_view>({
        "{city}！加里维克斯的彩票头奖已累积到 {pot}！找金发姑娘买张票，一夜暴富不是梦！",
        "{player}，看你这派头就知道品味不便宜！一张票十金币，去找金发姑娘！",
        "距离开奖只剩 {time}！别再数铜板了，开始梦想 {pot} 吧！",
        "还在跟另外四个抠门的家伙分装备？中奖的彩票独吞整个奖池！",
        "头奖已经 {pot} 了，伙计！够你修装备、买坐骑，再干一堆可疑的财务决策！",
        "时间就是金钱，你还剩 {time}！去金发姑娘那儿买你的金票！",
        "暗箱操作？！当然没有，只不过我手里确实有那么几张内部票……概率跟你一样……自己看规则去！",
        "{player}，你的下一场大冒险可能就从邮箱开始！中奖者的金币直接邮寄到账，邮费我出于慷慨自掏腰包！",
        "开奖就在 {time} 之后！多买多机会，不保底也绝不退款！",
        "加里维克斯的彩票！奖池 {pot}！金发姑娘负责卖票，我负责提供天才般的商业头脑！",
        "有人中奖？我们邮寄奖金！我自己中了内部票？奖池直接销毁！谁也不能说我把规则藏起来了！",
        "{player}，十个金币加一个梦想，够不够？去找金发姑娘！",
        "还剩 {time}，{pot} 悬在头上！记住：金票只买一个机会，不买一个保证！",
        "要是鲨鱼队赢了海盗队，或者这期彩票没到金币上限，所有人都得降职！",
        "感谢各位为对抗艾泽拉斯通货膨胀付出的辛勤劳动。所有人的无偿加班申请，批准！",
        "是你吗，{player}？报名参加本周的抽奖了吗？",
        "你们这帮懒虫！回去干活！尤其是你，{player}！",
        "我听说有人在办派对？居然没请我！",
        "向艾泽拉斯最伟大的贸易亲王致敬……也就是我！"
    });

    inline std::string AdvertisementTime(uint64_t remaining)
    {
        uint64_t amount;
        std::string unit;
        if (remaining > 86400)
        {
            amount = remaining / 86400;
            unit = "天";
        }
        else if (remaining > 3600)
        {
            amount = remaining / 3600;
            unit = "小时";
        }
        else
        {
            amount = remaining ? std::max<uint64_t>(1, remaining / 60) : 0;
            unit = "分钟";
        }
        return std::to_string(amount) + " " + unit;
    }

    inline std::string BuildAdvertisement(uint32_t index, uint32_t copper, uint64_t remaining,
        std::string_view playerName, std::string_view cityName = "暴风城")
    {
        std::string message(AdvertisementLines[index % AdvertisementLines.size()]);
        std::string pot = std::to_string(copper / 10000) + " 金币";
        std::string time = AdvertisementTime(remaining);
        auto replace = [&message](std::string_view token, std::string_view value)
        {
            size_t position = 0;
            while ((position = message.find(token, position)) != std::string::npos)
            {
                message.replace(position, token.size(), value);
                position += value.size();
            }
        };
        replace("{city}", cityName);
        replace("{pot}", pot);
        replace("{time}", time);
        replace("{player}", playerName.empty() ? std::string_view("那位朋友") : playerName);
        return message;
    }
}

#endif
