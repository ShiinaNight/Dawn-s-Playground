# 不知道为什么这两行在服务器里不生效
execute as @e[distance=..5] if entity @s[type=#dawn:undead] run effect give @s instant_health 1 3 true
execute as @e[distance=..5] unless entity @s[type=#dawn:undead] run effect give @s instant_damage 1 2 true

# execute as @e[distance=..5] unless entity @s[type=!skeleton,type=!stray,type=!stray,type=!wither,type=!zombie,type=!husk,type=!zombified_piglin,type=!zombie_villager,type=!drowned,type=!zoglin,type=!zombie_horse,type=!skeleton_horse,type=!phantom] run effect give @s instant_health 1 3 true
# execute as @e[distance=..5] if entity @s[type=!skeleton,type=!stray,type=!stray,type=!wither,type=!zombie,type=!husk,type=!zombified_piglin,type=!zombie_villager,type=!drowned,type=!zoglin,type=!zombie_horse,type=!skeleton_horse,type=!phantom] run effect give @s instant_damage 1 2 true

particle sweep_attack ~ ~ ~ 1.25 1.25 1.25 1 5 normal @a