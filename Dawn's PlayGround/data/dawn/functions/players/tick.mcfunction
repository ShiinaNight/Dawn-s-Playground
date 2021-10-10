# 等级提升相关
execute as @s run function dawn:players/level_up
# 睡美人武器相关
execute as @s[predicate=dawn:mainhand/sleeping_beauty] run function dawn:weapons/sleeping_beauty
# 铁驭头盔相关
execute as @s[predicate=dawn:head/pilot_helmet] run function dawn:equipments/pilot_helmet
# 武士刀相关
execute as @s[predicate=dawn:mainhand/katana] run function dawn:weapons/katana
# 检测所指方块
execute as @a at @s anchored eyes positioned ^ ^ ^ anchored feet run function dawn:players/pointing_block