scoreboard players remove @s dawnSkillPoint 400
scoreboard players set @s skill_trigger 0

# 标记最近的生物
execute at @s as @e[distance=0.1..10,sort=nearest,limit=1,type=!#dawn:objects,type=!#dawn:projectiles] run scoreboard players set @s SPTarget 1