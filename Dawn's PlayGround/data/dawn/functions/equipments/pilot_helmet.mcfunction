# 铁驭头盔辅助瞄准模块
# 1.自带夜视
effect give @s[predicate=!dawn:effect/night_version_long] night_vision 11 0 true
# 2.标记周围实体（发光）
execute at @s run effect give @e[distance=0.1..9] glowing 10 1 true
# 3.潜行3s后隐身10s
execute as @a[scores={dawnSnkTim=30..,dawnEqpSklTim=..0}] run function dawn:skills/pilot_helmet
# 持续减少技能持续时间
scoreboard players remove @s[scores={dawnEqpSklTim=1..}] dawnEqpSklTim 1
# 技能持续时禁止潜行值增加
scoreboard players set @s[scores={dawnEqpSklTim=1..}] dawnSnkTim 0