# 显示粒子用盔甲架的设置
execute as @e[type=armor_stand,tag=immortal_blade_particle_sec] at @s run function dawn_skills:immortal_blade_sec/particle_set
# 让显示粒子用盔甲架面向中心
execute as @e[tag=immortal_blade_sec] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=immortal_blade_particle_sec,limit=1]

# 显示粒子
execute as @e[tag=immortal_blade_sec] if entity @e[type=armor_stand,tag=immortal_blade_show_particle_sec] at @s run function dawn_skills:immortal_blade_sec/particle_main
# 无敌帧
scoreboard players remove @e[scores={dawnImmortalBladeCD2=1..}] dawnImmortalBladeCD2 1