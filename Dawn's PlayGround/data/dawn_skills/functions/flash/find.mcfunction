scoreboard players set @s dawnTemper1 1
# 用来防止标记自己
scoreboard players set @s dawnTemper2 1

execute if entity @e[distance=..2] unless entity @e[scores={dawnFlashTarget=1}] as @e[distance=..2,sort=nearest,limit=1] unless score @s dawnTemper2 matches 1 run scoreboard players set @s dawnFlashTarget 1
execute if entity @e[distance=..2,scores={dawnFlashTarget=1}] run scoreboard players add @s dawnSkillPoint 100

particle dust 0.627 0 0.988 1 ~ ~ ~
scoreboard players set @s dawnTemper2 0
execute if entity @s[distance=..9] unless entity @e[scores={dawnFlashTarget=1}] positioned ^ ^ ^0.5 run function dawn_skills:flash/find

# 如果没有找到目标 则在最远处生成一个标记
# 运行结束后返还100技力
execute unless entity @s[distance=..9] unless entity @e[scores={dawnFlashTarget=1}] run function dawn_skills:flash/find_end