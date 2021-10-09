# 转圈圈~
execute at @s run tp @s ~ ~ ~ ~10 ~
# 对周围敌人造成伤害
execute at @s run effect give @e[distance=..2] instant_damage 1 0 true
# 显示特效（这个特效还需改进www，最好做成一个盔甲架拿着剑转圈）
execute at @s run particle minecraft:sweep_attack ~ ~1.5 ~ 1 1 1 0.01 1 normal @a
execute at @s run particle minecraft:dust 1 0.659 0.659 1 ~ ~1 ~ 0.9 0.9 0.9 0.3 15 normal @a
# 保持dawnSnKTim不再增长
scoreboard players remove @s[scores={dawnTwoTick=1}] dawnSnkTim 1
# 增加技能持续时间（眩晕槽）
scoreboard players add @s dawnSkillTim 2