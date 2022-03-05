scoreboard players remove @s dawnSkillPoint 400
scoreboard players set @s skill_trigger 0

# 标记最近的生物
execute as @e[distance=0.1..10] run scoreboard players set @s SPTarget 1