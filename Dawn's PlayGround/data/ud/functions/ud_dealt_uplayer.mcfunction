execute as @e[type=!player,scores={udCounts=1..}] at @s store result score @s udHup run data get entity @s Health
execute as @e[type=!player,scores={udCounts=1..}] at @s run scoreboard players operation @s udHup -= @s udCounts
execute as @e[type=!player,scores={udCounts=1..}] at @s store result storage minecraft:ud_upmdf entity double 1 run scoreboard players get @s udHup
execute as @e[type=!player,scores={udCounts=1..}] at @s if score @s udHup matches ..0 run loot spawn ~ ~ ~ kill @s
execute as @e[type=!player,scores={udCounts=1..}] at @s run data modify entity @s Health set from storage minecraft:ud_upmdf entity


function ud:ud_particle

execute as @e[type=!player,scores={udCounts=1..}] at @s run scoreboard players set @s udHup 0
execute as @e[type=!player,scores={udCounts=1..}] at @s run scoreboard players set @s udCounts 0