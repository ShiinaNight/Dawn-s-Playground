execute at @e[limit=1,scores={dawnFlashTarget=1}] run teleport @s ^ ^ ^-1 facing entity @e[limit=1,scores={dawnFlashTarget=1}]
execute as @e[scores={dawnFlashTarget=1}] run function dawn_skills:flash/damage
kill @e[type=armor_stand,tag=flash_target]
scoreboard players set @s dawnSkillTim 0