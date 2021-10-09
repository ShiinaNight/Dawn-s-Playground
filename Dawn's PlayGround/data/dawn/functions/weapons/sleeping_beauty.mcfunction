# 萝莎莉娅自带的幸运II（作者的庇护www）
effect give @s luck 1 1 true
# 潜行1s发动蓄力攻击
execute as @s[scores={dawnSnkTim=10..}] run function dawn:skills/sleeping_beauty
# 蓄力攻击5s后眩晕
scoreboard players set @s[scores={dawnSkillTim=50..}] dawnSnkTim 0
execute as @s[scores={dawnSkillTim=1..,dawnSnkTim=0}] run function dawn:skills/sleeping_beauty_faint
# 持续减少技能持续时间（眩晕槽）
scoreboard players remove @s[scores={dawnSkillTim=1..}] dawnSkillTim 1