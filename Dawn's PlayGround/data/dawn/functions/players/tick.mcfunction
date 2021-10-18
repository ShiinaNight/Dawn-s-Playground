# 等级提升相关
execute as @s run function dawn:players/level_up
# 睡美人武器相关
execute as @s[predicate=dawn:mainhand/sleeping_beauty] run function dawn:weapons/sleeping_beauty
# 铁驭头盔相关
execute as @s[predicate=dawn:head/pilot_helmet] run function dawn:equipments/pilot_helmet
# 武士刀相关
execute as @s[predicate=dawn:mainhand/katana] run function dawn:weapons/katana
# 枪类相关
execute as @s[predicate=dawn:mainhand/guns] at @s anchored eyes positioned ^ ^ ^ anchored feet run function dawn:players/pointing_entity
# 收割者相关
execute as @s[predicate=dawn:mainhand/reaper_sickle] run function dawn:weapons/reaper_sickle
# 无尽之剑相关
execute as @s[predicate=dawn:mainhand/infinity_blade] run function dawn:weapons/infinity_blade
# 断钢剑相关
execute as @s[predicate=dawn:mainhand/excalibur] run function dawn:weapons/excalibur
# 充能断钢剑相关
execute as @s[predicate=dawn:mainhand/light_excalibur] run function dawn:weapons/light_excalibur
# 圣人之心相关
execute as @s[predicate=dawn:mainhand/saint_heart] run function dawn:weapons/saint_heart
# 动力装甲 MKIII相关
execute as @s[predicate=dawn:head/exoskeleton_mk3] run function dawn:equipments/exoskeleton_mk3
# 太阳剑相关
execute as @s[predicate=dawn:mainhand/sun_sword] run function dawn:weapons/sun_sword

# 检测所指方块
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function dawn:players/pointing_block

# 通用伤害系统
function ud:ud_dealt_player
function ud:ud_dealt_uplayer_main