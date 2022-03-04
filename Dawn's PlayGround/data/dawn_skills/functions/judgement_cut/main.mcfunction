# 不知道为什么这两行在服务器里不生效
# effect give @e[distance=..5,type=#dawn:undead] instant_health 1 3 true
# effect give @e[distance=..5,type=!#dawn:undead] instant_damage 1 2 true

effect give @e[scores={dawnUnDead=1},distance=..5] instant_health 1 3 true
execute as @e[distance=..5] unless score @s dawnUnDead matches 1 run effect give @s instant_damage 1 2 true

particle sweep_attack ~ ~ ~ 1.25 1.25 1.25 1 5 normal @a