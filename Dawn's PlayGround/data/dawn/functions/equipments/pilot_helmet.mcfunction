# 铁驭头盔辅助瞄准模块
# 1.自带夜视
effect give @s[predicate=!dawn:effect/night_version_long] night_vision 11 0 true
# 2.标记周围实体（发光）
execute at @s run effect give @e[distance=0.1..9] glowing 10 1 true

# 铁驭头盔隐形模块
# 1.检测触发器并运行函数
execute at @s anchored eyes positioned ^ ^ ^ anchored feet if entity @e[distance=..0.5,type=item,predicate=dawn:trigger/pilot_helmet_invisibility_extension] run function dawn:trigger/pilot_helmet_invisibility_extension