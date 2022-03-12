# 睡美人武器相关
# execute as @s[predicate=dawn:mainhand/sleeping_beauty] run function dawn:weapons/sleeping_beauty
# 无尽之剑相关
execute as @s[predicate=dawn:mainhand/infinity_blade] run function dawn:weapons/infinity_blade
# 断钢剑相关
execute as @s[predicate=dawn:mainhand/excalibur] run function dawn:weapons/excalibur
# 充能断钢剑相关
execute as @s[predicate=dawn:mainhand/light_excalibur] run function dawn:weapons/light_excalibur
# 圣人之心相关
execute as @s[predicate=dawn:mainhand/saint_heart] run function dawn:weapons/saint_heart
# 铁驭靴子相关
# execute as @s[predicate=dawn:feet/pilot_boots] run function dawn:equipments/pilot_boots

# 芊汐纸鸢特效
execute as @s[predicate=dawn:mainhand/shutsu_crane] if score @s netherite_sword matches 1.. at @s run function dawn:particles/shutsu_crane
# 给刚重生的玩家回血
effect give @a[scores={dawnLastDeath=1}] instant_health 1 20 true

# waila相关
function waila:tick