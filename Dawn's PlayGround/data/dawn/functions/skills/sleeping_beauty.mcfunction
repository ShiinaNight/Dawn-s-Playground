# 转圈圈~
execute at @s run tp ^1 ^ ^
# 对周围敌人造成伤害
execute at @s run effect give @e[distance=..2] instant_damage 1 0 true
# 保持dawnSnKTim不再增长
scoreboard players remove @s[scores={dawnTwoTick=1}] dawnSnkTim 1