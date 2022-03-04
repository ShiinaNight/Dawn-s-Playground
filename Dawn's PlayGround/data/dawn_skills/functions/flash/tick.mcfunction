execute as @a[predicate=dawn:offhand/skills/flash] if score @s dawnSkillPoint matches 100.. if score @s skill_trigger matches 1.. run function dawn_skills:flash/start
execute as @a[predicate=dawn:offhand/skills/flash] unless score @s dawnSkillPoint matches 100.. if score @s skill_trigger matches 1.. run function dawn_skills:flash/warn
execute as @a[predicate=dawn:offhand/skills/flash] if score @s dawnSkillTim matches 0 run scoreboard players reset @e dawnFlashTarget

execute at @e[scores={dawnFlashTarget=1}] run particle dust 0.627 0 0.988 1 ^ ^1.8 ^
execute at @e[type=armor_stand,tag=flash_target] run particle dust 0.627 0 0.988 1 ~ ~ ~
