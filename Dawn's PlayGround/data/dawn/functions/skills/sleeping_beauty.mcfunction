# 转圈圈~
execute at @s run tp @s ~ ~ ~ ~30 ~
# 对周围敌人造成伤害
execute at @s run effect give @e[distance=0.01..3] instant_damage 1 2 true
# 显示特效（这个特效还需改进www，最好做成一个盔甲架拿着剑转圈）
execute at @s run particle minecraft:sweep_attack ~ ~1.5 ~ 1 1 1 0.01 1 normal @a
execute at @s run particle minecraft:dust 1 0.659 0.659 1 ~ ~1 ~ 0.9 0.9 0.9 0.3 15 normal @a
# 保持dawnSnKTim不再增长
scoreboard players remove @s dawnKeepSnkTim 1
# 增加技能持续时间（眩晕槽）
scoreboard players add @s dawnSkillTim 3
# 给予反胃效果（慢慢的就晕了www）
effect give @s nausea 4 4 true
# 给予抗性提升2（转着圈根本没法躲攻击，没这个效果可能就变成废物技能了！www）
effect give @s resistance 1 1 true
