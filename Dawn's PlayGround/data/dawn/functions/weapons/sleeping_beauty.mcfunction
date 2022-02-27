# 萝莎莉娅自带的幸运II（作者的庇护www）
effect give @s luck 2 1 true
# 潜行1s发动蓄力攻击
execute as @s[scores={dawnKeepSnkTim=10..}] run function dawn:skills/sleeping_beauty
# 蓄力攻击5s后眩晕
scoreboard players set @s[scores={dawnSkillTim=50..}] dawnKeepSnkTim -1
scoreboard players set @s[scores={dawnSkillTim=50..}] dawnFaint 70
execute as @s[scores={dawnFaint=1..,dawnKeepSnkTim=..0}] run function dawn:skills/sleeping_beauty_faint
# 持续减少技能持续时间（眩晕槽）
scoreboard players remove @s[scores={dawnSkillTim=1..}] dawnSkillTim 1