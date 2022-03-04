execute as @e[type=#dawn:undead,distance=..5] run effect give @s instant_health 1 3 true
execute as @e[distance=..5] unless entity @s[type=#dawn:undead] run effect give @s instant_damage 1 2 true
execute as @e[distance=..5] unless entity @s[type=#dawn:undead] run say 1
particle sweep_attack ~ ~ ~ 1.25 1.25 1.25 1 5 normal @a