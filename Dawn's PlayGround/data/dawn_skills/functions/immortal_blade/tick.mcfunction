# 显示粒子用盔甲架的设置
execute as @e[type=armor_stand,tag=immortal_blade_particle] at @s run function dawn_skills:immortal_blade/particle_set
# 让显示粒子用盔甲架面向中心
execute as @e[tag=immortal_blade] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=immortal_blade_particle,limit=1]
# 触发
execute as @a[predicate=dawn:offhand/skills/immortal_blade] unless score @s dawnSkillTim matches 1.. if score @s dawnSkillPoint matches 250.. if score @s skill_trigger matches 1.. at @s run function dawn_skills:immortal_blade/start
execute as @a[predicate=dawn:offhand/skills/immortal_blade] unless score @s dawnSkillTim matches 1.. unless score @s dawnSkillPoint matches 250.. if score @s skill_trigger matches 1.. at @s run function dawn_skills:immortal_blade/warn
execute as @a[predicate=dawn:offhand/skills/immortal_blade] if score @s dawnSkillTim matches 1.. if score @s skill_trigger matches 1.. at @s run function dawn_skills:immortal_blade/warn

# 显示粒子
execute as @e[tag=immortal_blade] if entity @e[type=armor_stand,tag=immortal_blade_show_particle] at @s run function dawn_skills:immortal_blade/particle_main
# 无敌帧
scoreboard players remove @e[scores={dawnImmortalBladeCD=1..}] dawnImmortalBladeCD 1