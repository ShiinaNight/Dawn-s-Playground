execute as @e[tag=summoned_guild_guard] at @s as @a[distance=..5] run effect give @s weakness 5 9 true
execute as @e[tag=summoned_guild_guard] at @s as @a[distance=..2] run effect give @s slowness 1 9 true
execute as @e[tag=summoned_guild_guard] at @s as @a[distance=..1] run effect give @s instant_damage 1 2 true

execute as @e[tag=summoned_guild_guard,nbt={HurtTime:1s}] run scoreboard players add @s dawnHurtTimes 1
execute as @e[tag=summoned_guild_guard] if score @s dawnHurtTimes matches 5.. at @s run function dawn:entities/guild_guard_skill