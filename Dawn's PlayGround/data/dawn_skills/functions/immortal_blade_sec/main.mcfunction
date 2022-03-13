# 生成一个有标签的盔甲架 用于生成其他盔甲架
summon minecraft:armor_stand ~ ~ ~ {Tags:["immortal_blade_particle_sec","dcd_2s","no_particle"],Invisible:1b,NoGravity:1b}
# 调整盔甲架位置和视角
execute as @e[tag=immortal_blade_particle_sec] at @a[predicate=dawn:offhand/skills/immortal_blade,sort=nearest,limit=1] anchored eyes run tp @s ^ ^ ^-0.1 facing entity @a[predicate=dawn:offhand/skills/immortal_blade,sort=nearest,limit=1]
execute as @e[tag=immortal_blade_particle_sec] at @a[predicate=dawn:offhand/skills/immortal_blade,sort=nearest,limit=1] run tp @s ~ ~-2.5 ~ ~80 -30
function dawn:set_score/death_count_down/set
# 延时显示粒子、造成伤害
schedule function dawn_skills:immortal_blade_sec/particle_show 2s
execute as @e[type=armor_stand,tag=immortal_blade_temp] unless entity @s[tag=powered] run schedule function dawn_skills:immortal_blade_sec/damage 2s
execute as @e[type=armor_stand,tag=immortal_blade_temp] if entity @s[tag=powered] run schedule function dawn_skills:immortal_blade_sec/damage_powered 2s
# 延时清除盔甲架
schedule function dawn_skills:immortal_blade_sec/particle_clear 4.5s