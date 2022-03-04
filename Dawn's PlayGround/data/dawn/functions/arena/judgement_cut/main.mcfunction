execute as @e[distance=..5] if entity @s[type=#dawn:undead_mobs] run effect give @s instant_health 1 3 true
execute as @e[distance=..5] unless entity @s[type=#dawn:undead_mobs] run effect give @s instant_damage 1 2 true
particle sweep_attack ~ ~ ~ 1.25 1.25 1.25 1 5 normal @a