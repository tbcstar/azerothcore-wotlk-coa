-- One indexed pass replaces 167 single-row UPDATEs on `item_template`.`description`.
UPDATE `item_template` AS `a`
JOIN (
    SELECT 'Activate your Azure Gossamer Wings.' AS `src`, '激活你的蔚蓝格桑花之翼。' AS `dst`
    UNION ALL SELECT 'Activate your Blazing Irie Wings.' AS `src`, '激活你的燃烧虹膜之翼。' AS `dst`
    UNION ALL SELECT 'Activate your Bloodfly Infested Visage.' AS `src`, '激活你的血蝇感染的面具。' AS `dst`
    UNION ALL SELECT 'Activate your Blossom Gossamer Wings.' AS `src`, '激活你的繁花薄翼。' AS `dst`
    UNION ALL SELECT 'Activate your Crimson Gossamer Wings.' AS `src`, '激活你的绯红格桑花之翼。' AS `dst`
    UNION ALL SELECT 'Activate your Emerald Gossamer Wings.' AS `src`, '激活你的翡翠薄翼。' AS `dst`
    UNION ALL SELECT 'Activate your Felfire Wings.' AS `src`, '激活你的恶魔烈焰翅膀。' AS `dst`
    UNION ALL SELECT 'Activate your Fly Infested Visage.' AS `src`, '激活你的蝇灾之面。' AS `dst`
    UNION ALL SELECT 'Activate your Glowfly Infested Visage.' AS `src`, '激活你的光虫感染的面具。' AS `dst`
    UNION ALL SELECT 'Activate your Golden Gossamer Wings.' AS `src`, '激活你的鎏金薄翼。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 01.' AS `src`, '激活你的骑士之翼01。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 06.' AS `src`, '激活你的骑士之翼06。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 07.' AS `src`, '激活你的骑士之翼07。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 09.' AS `src`, '激活你的骑士之翼09。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 11.' AS `src`, '激活你的骑士之翼11。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 12.' AS `src`, '激活你的骑士之翼12。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 13.' AS `src`, '激活你的骑士之翼13。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 14.' AS `src`, '激活你的骑士之翼14。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 16.' AS `src`, '激活你的骑士之翼16。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 18.' AS `src`, '激活你的骑士之翼18。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 20.' AS `src`, '激活你的骑士之翼20。' AS `dst`
    UNION ALL SELECT 'Activate your KnightWings 21.' AS `src`, '激活你的骑士之翼21。' AS `dst`
    UNION ALL SELECT 'Activate your Sandfly Infested Visage.' AS `src`, '激活你的沙蝇感染的面具。' AS `dst`
    UNION ALL SELECT 'Activate your Silver Gossamer Wings.' AS `src`, '激活你的银纱薄翼。' AS `dst`
    UNION ALL SELECT 'Activate your SkyWings 02.' AS `src`, '激活你的天翼02。' AS `dst`
    UNION ALL SELECT 'Activate your SkyWings 03.' AS `src`, '激活你的天翼03。' AS `dst`
    UNION ALL SELECT 'Activate your SkyWings 06.' AS `src`, '激活你的天翼06。' AS `dst`
    UNION ALL SELECT 'Activate your Smoldering Wings.' AS `src`, '激活你的浓烟之翼。' AS `dst`
    UNION ALL SELECT 'Activate your Soulbringer\'s Wings.' AS `src`, '激活你的魅殒之翼。' AS `dst`
    UNION ALL SELECT 'Activate your Sulfurous Wings.' AS `src`, '激活你的硫磺之翼。' AS `dst`
    UNION ALL SELECT 'Activate your Tendrils of Mana.' AS `src`, '激活你的法力触须。' AS `dst`
    UNION ALL SELECT 'Activate your Tendrils of the Naaru.' AS `src`, '激活你的纳鲁触须。' AS `dst`
    UNION ALL SELECT 'Activate your Tendrils of the Old Gods.' AS `src`, '激活你的古神的触手。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Amber Monarch.' AS `src`, '激活你的琥珀君主的翅膀。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Amethyst Monarch.' AS `src`, '激活你的紫水晶君主的翅膀。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Archon.' AS `src`, '激活你的统御者殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Deceiver.' AS `src`, '激活你的欺世者殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Healer.' AS `src`, '激活你的救赎殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Herald.' AS `src`, '激活你的先驱殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Luminary.' AS `src`, '激活你的先贤殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Oppressor.' AS `src`, '激活你的镇压者殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Oracle.' AS `src`, '激活你的先知殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Phantom.' AS `src`, '激活你的幻影殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Protector.' AS `src`, '激活你的戍卫殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Savior.' AS `src`, '激活你的圣殒之翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Seraph.' AS `src`, '激活你的炽天使殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Shade.' AS `src`, '激活你的幽魂殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Sovereign.' AS `src`, '激活你的君王殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Tempter.' AS `src`, '激活你的魔君殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Tyrant.' AS `src`, '激活你的暴君殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Usurper.' AS `src`, '激活你的僭主殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Watcher.' AS `src`, '激活你的守望者殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Departed Zenith.' AS `src`, '激活你的天巅殒翼。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Emerald Monarch.' AS `src`, '激活你的翡翠君主的翅膀。' AS `dst`
    UNION ALL SELECT 'Activate your Wings of the Tourmaline Monarch.' AS `src`, '激活你的碧玺君主的翅膀。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 001.' AS `src`, '激活你的怒翼001。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 002.' AS `src`, '激活你的怒翼002。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 003.' AS `src`, '激活你的怒翼003。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 006.' AS `src`, '激活你的怒翼006。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 008.' AS `src`, '激活你的怒翼008。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 009.' AS `src`, '激活你的怒翼009。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 010.' AS `src`, '激活你的怒翼010。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 011.' AS `src`, '激活你的怒翼011。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 017.' AS `src`, '激活你的怒翼017。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 018.' AS `src`, '激活你的怒翼018。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 019.' AS `src`, '激活你的怒翼 019。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 020.' AS `src`, '激活你的怒翼 020。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 021.' AS `src`, '激活你的怒翼 021。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 023.' AS `src`, '激活你的怒翼 023。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 024.' AS `src`, '激活你的怒翼 024。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 026.' AS `src`, '激活你的怒翼 026。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 031.' AS `src`, '激活你的怒翼 031。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 034.' AS `src`, '激活你的怒翼 034。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 035.' AS `src`, '激活你的怒翼 035。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 036.' AS `src`, '激活你的怒翼 036。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 043.' AS `src`, '激活你的怒翼 043。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 045.' AS `src`, '激活你的怒翼 045。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 052.' AS `src`, '激活你的怒翼 052。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 055.' AS `src`, '激活你的怒翼 055。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 058.' AS `src`, '激活你的怒翼 058。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 059.' AS `src`, '激活你的怒翼 059。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 061.' AS `src`, '激活你的怒翼 061。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 069.' AS `src`, '激活你的怒翼 069。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 070.' AS `src`, '激活你的怒翼 070。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 075.' AS `src`, '激活你的怒翼 075。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 078.' AS `src`, '激活你的怒翼 078。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 088.' AS `src`, '激活你的怒翼 088。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 091.' AS `src`, '激活你的怒翼 091。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 095.' AS `src`, '激活你的怒翼 095。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 097.' AS `src`, '激活你的怒翼 097。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 098.' AS `src`, '激活你的怒翼 098。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 100.' AS `src`, '激活你的怒翼 100。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 104.' AS `src`, '激活你的怒翼 104。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 105.' AS `src`, '激活你的怒翼 105。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 106.' AS `src`, '激活你的怒翼 106。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 108.' AS `src`, '激活你的怒翼 108。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 109.' AS `src`, '激活你的怒翼 109。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 111.' AS `src`, '激活你的怒翼 111。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 112.' AS `src`, '激活你的怒翼 112。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 114.' AS `src`, '激活你的怒翼 114。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 115.' AS `src`, '激活你的怒翼 115。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 116.' AS `src`, '激活你的怒翼 116。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 122.' AS `src`, '激活你的怒翼 122。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 123.' AS `src`, '激活你的怒翼 123。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 125.' AS `src`, '激活你的怒翼 125。' AS `dst`
    UNION ALL SELECT 'Activate your WrathWings 126.' AS `src`, '激活你的怒翼 126。' AS `dst`
    UNION ALL SELECT 'Disguise yourself as Medivh!' AS `src`, '化身为麦迪文！' AS `dst`
    UNION ALL SELECT 'Disguise yourself as Nathanos Blightcaller!' AS `src`, '化身为纳萨诺斯·凋零者！' AS `dst`
    UNION ALL SELECT 'Disguise yourself as a Bwonsamdi!' AS `src`, '化身为邦桑迪！' AS `dst`
    UNION ALL SELECT 'Disguise yourself as a Dark Ranger!' AS `src`, '化身为暗黑游侠！' AS `dst`
    UNION ALL SELECT 'Disguise yourself as a Dormant Vrykul!' AS `src`, '化身为休眠的维库人！' AS `dst`
    UNION ALL SELECT 'Disguise yourself as a Mad Scientist!' AS `src`, '化身为疯狂的科学家！' AS `dst`
    UNION ALL SELECT 'Obtained by killing Anub\'Rekhan.' AS `src`, '击杀阿努布雷坎后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Ayamiss the Hunter.' AS `src`, '击杀狩猎者阿亚米斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Baron Geddon.' AS `src`, '击杀迦顿男爵后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Battleguard Sartura.' AS `src`, '击杀沙尔图拉后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Bloodlord Mandokir.' AS `src`, '击杀血领主曼多基尔后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Broodlord Lashlayer.' AS `src`, '击杀勒什雷尔后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Buru the Gorger.' AS `src`, '击杀吞咽者布鲁后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing C\'Thun.' AS `src`, '击杀克苏恩后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Chromaggus.' AS `src`, '击杀克洛玛古斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Ebonroc.' AS `src`, '击杀埃博诺克后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Fankriss the Unyielding.' AS `src`, '击杀顽强的范克瑞斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Firemaw.' AS `src`, '击杀费尔默后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Flamegor.' AS `src`, '击杀弗莱格尔后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Gahz\'ranka.' AS `src`, '击杀加兹兰卡后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Garr.' AS `src`, '击杀加尔后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Gehennas.' AS `src`, '击杀基赫纳斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing General Rajaxx.' AS `src`, '击杀拉贾克斯将军后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Gluth.' AS `src`, '击杀格拉斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Golemagg the Incinerator.' AS `src`, '击杀焚化者古雷曼格后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Gothik the Harvester.' AS `src`, '击杀收割者戈提克后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Grand Widow Faerlina.' AS `src`, '击杀黑女巫法琳娜后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Grobbulus.' AS `src`, '击杀格罗布鲁斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Hakkar.' AS `src`, '击杀哈卡后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Heigan the Unclean.' AS `src`, '击杀肮脏的希尔盖后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing High Priest Thekal.' AS `src`, '击杀高阶祭司塞卡尔后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing High Priest Venoxis.' AS `src`, '击杀高阶祭司温诺希斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing High Priestess Arlokk.' AS `src`, '击杀高阶祭司娅尔罗后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing High Priestess Jeklik.' AS `src`, '击杀高阶祭司耶克里克后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing High Priestess Mar\'li.' AS `src`, '击杀高阶祭司玛尔里后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Instructor Razuvious.' AS `src`, '击杀教官拉苏维奥斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Jin\'do the Hexxer.' AS `src`, '击杀妖术师金度后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Kel\'Thuzad.' AS `src`, '击杀克尔苏加德后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Kurinnaxx.' AS `src`, '击杀库林纳克斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Loatheb.' AS `src`, '击杀洛欧塞布后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Lucifron.' AS `src`, '击杀鲁西弗隆后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Maexxna.' AS `src`, '击杀迈克斯纳后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Magmadar.' AS `src`, '击杀玛格曼达后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Majordomo Executus.' AS `src`, '击杀管理者埃克索图斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Moam.' AS `src`, '击杀莫阿姆后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Nefarian.' AS `src`, '击杀奈法利安后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Noth the Plaguebringer.' AS `src`, '击杀药剂师诺斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Onyxia.' AS `src`, '击杀奥妮克希亚后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Ossirian the Unscarred.' AS `src`, '击杀无疤者奥斯里安后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Ouro.' AS `src`, '击杀奥罗后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Patchwerk.' AS `src`, '击杀帕奇维克后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Princess Huhuran.' AS `src`, '击杀哈霍兰公主后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Ragnaros.' AS `src`, '击杀拉格纳罗斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Razorgore the Untamed.' AS `src`, '击杀狂野的拉佐格尔后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Sapphiron.' AS `src`, '击杀萨菲隆后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Shazzrah.' AS `src`, '击杀沙斯拉尔后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Sulfuron Harbinger.' AS `src`, '击杀萨弗隆先驱后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Thaddius.' AS `src`, '击杀塔迪乌斯后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing The Prophet Skeram.' AS `src`, '击杀预言者斯克拉姆后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Vaelastrasz the Corrupt.' AS `src`, '击杀堕落者瓦拉斯塔兹后获得。' AS `dst`
    UNION ALL SELECT 'Obtained by killing Viscidus.' AS `src`, '击杀维希度斯后获得。' AS `dst`
) AS `m` ON `m`.`src` = `a`.`description`
SET `a`.`description` = `m`.`dst`;
