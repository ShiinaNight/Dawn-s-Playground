execute as @e[type=!player,scores={ud_counts=1..}] at @s store result score @s ud_hup run data get entity @s Health
execute as @e[type=!player,scores={ud_counts=1..}] at @s run scoreboard players operation @s ud_hup -= @s ud_counts
execute as @e[type=!player,scores={ud_counts=1..}] at @s store result storage minecraft:ud_upmdf entity double 1 run scoreboard players get @s ud_hup
execute as @e[type=!player,scores={ud_counts=1..}] at @s run data modify entity @s Health set from storage minecraft:ud_upmdf entity
execute as @e[type=!player,scores={ud_counts=1..}] at @s run particle damage_indicator ~ ~ ~ 0.5 0.5 0.5 1 20
execute as @e[type=!player,scores={ud_counts=1..}] at @s run playsound entity.player.attack.crit voice @a ~ ~ ~ 10
execute as @e[type=!player,scores={ud_counts=1..}] at @s run scoreboard players set @s ud_hup 0
execute as @e[type=!player,scores={ud_counts=1..}] at @s run scoreboard players set @s ud_counts 0


