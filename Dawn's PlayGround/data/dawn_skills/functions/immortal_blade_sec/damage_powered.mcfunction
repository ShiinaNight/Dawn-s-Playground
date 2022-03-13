# 造成伤害
execute at @e[tag=immortal_blade_sec] positioned ~ ~-1 ~ as @e[distance=..2,type=!armor_stand] unless score @s dawnImmortalBladeCD2 matches 1.. if score @s dawnUnDead matches 1 run effect give @s instant_health 1 7 true
execute at @e[tag=immortal_blade_sec] positioned ~ ~-1 ~ as @e[distance=..2,type=!armor_stand] unless score @s dawnImmortalBladeCD2 matches 1.. unless score @s dawnUnDead matches 1 run effect give @s instant_damage 1 6 true
execute at @e[tag=immortal_blade_sec] positioned ~ ~-1 ~ as @e[distance=..2,type=!armor_stand] unless score @s dawnImmortalBladeCD2 matches 1.. run scoreboard players set @s udCounts 56
# 标记被击中的敌人（防止持续伤害
execute at @e[tag=immortal_blade_sec,type=!armor_stand] run scoreboard players set @e[distance=..2] dawnImmortalBladeCD2 60
# 音效
execute at @e[tag=immortal_blade_sec,limit=1] run playsound item.totem.use player @a ~ ~ ~ 1
execute at @e[tag=immortal_blade_sec,limit=1] run playsound item.totem.use player @a ~ ~ ~ 1 0.3
execute at @e[tag=immortal_blade_sec,limit=1] run playsound item.totem.use player @a ~ ~ ~ 1 0.1
# 清除临时盔甲架
kill @e[type=armor_stand,tag=immortal_blade_temp]
