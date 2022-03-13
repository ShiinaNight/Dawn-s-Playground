scoreboard players remove @s dawnSkillPoint 250
scoreboard players set @s skill_trigger 0
scoreboard players set @s dawnSkillTim 120

# 生成一个有标签的盔甲架 用于生成其他盔甲架
summon minecraft:armor_stand ~ ~ ~ {Tags:["immortal_blade_particle","dcd_2s","no_particle"],Invisible:1b,NoGravity:1b}
# 生成一个有临时盔甲架 用于给第二刀判定是否蓄力
summon armor_stand ~ ~ ~ {Tags:["immortal_blade_temp"],Invisible:1b,NoGravity:1b}

# 如果已经蓄力3s 则额外消耗技力发动蓄力不死斩
execute if score @s dawnKeepSnkTim matches 60.. if score @s dawnSkillPoint matches 150.. run function dawn_skills:immortal_blade/powered
# 调整盔甲架位置和视角
execute as @e[tag=immortal_blade_particle] at @a[predicate=dawn:offhand/skills/immortal_blade,sort=nearest,limit=1] anchored eyes run tp @s ^ ^ ^-0.1 facing entity @a[predicate=dawn:offhand/skills/immortal_blade,sort=nearest,limit=1]
execute as @e[tag=immortal_blade_particle] at @a[predicate=dawn:offhand/skills/immortal_blade,sort=nearest,limit=1] run tp @s ~ ~-2.5 ~ ~-80 -30
function dawn:set_score/death_count_down/set
# 播放前摇音效
execute at @s run playsound entity.elder_guardian.curse player @a ~ ~ ~ 1
# 延时放出第二刀
schedule function dawn_skills:immortal_blade_sec/start 1.5s
# 延时显示粒子、造成伤害
schedule function dawn_skills:immortal_blade/particle_show 2s
execute as @e[type=armor_stand,tag=immortal_blade_particle] unless entity @s[tag=powered] run schedule function dawn_skills:immortal_blade/damage 2s
execute as @e[type=armor_stand,tag=immortal_blade_particle] if entity @s[tag=powered] run schedule function dawn_skills:immortal_blade/damage_powered 2s
# 显示标题
title @s title [{"text": "不死斩","color": "red","bold":true}]
title @s times 10 20 10


# 延时清除盔甲架
schedule function dawn_skills:immortal_blade/particle_clear 4.5s