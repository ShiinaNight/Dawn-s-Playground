scoreboard players set @s udibCD 1
schedule function gem:cd_0 1t append

scoreboard players add @s udibThunderTims 1
execute as @s[scores={udibThunderTims=3..}] run function udib:udib_type_thunder
scoreboard players set @s udibThunderDMG 5