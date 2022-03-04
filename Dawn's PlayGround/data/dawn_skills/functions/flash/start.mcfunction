scoreboard players remove @s dawnSkillPoint 100
scoreboard players set @s skill_trigger 0
scoreboard players set @s dawnSkillTim 100
scoreboard players set @s dawnTemper1 0

# 用来将盔甲架变为目标
execute as @e[type=armor_stand,tag=flash_target] run scoreboard players set @s dawnFlashTarget 1
# 如果没有目标，寻找目标
execute unless entity @e[scores={dawnFlashTarget=1}] at @s anchored eyes positioned ^ ^ ^2 run function dawn_skills:flash/find
# 如果已有目标，发动瞬移
execute if entity @e[scores={dawnFlashTarget=1}] unless score @s dawnTemper1 matches 1 run function dawn_skills:flash/main
