# 不知道为什么这两行在服务器里不生效
# effect give @e[distance=..5,type=#dawn:undead] instant_health 1 3 true
# effect give @e[distance=..5,type=!#dawn:undead] instant_damage 1 2 true

effect give @e[distance=..5,type=skeleton,type=stray,type=stray,type=wither,type=zombie,type=husk,type=zombified_piglin,type=zombie_villager,type=drowned,type=zoglin,type=zombie_horse,type=skeleton_horse,type=phantom] instant_health 1 3 true
effect give @e[distance=..5,type=!skeleton,type=!stray,type=!stray,type=!wither,type=!zombie,type=!husk,type=!zombified_piglin,type=!zombie_villager,type=!drowned,type=!zoglin,type=!zombie_horse,type=!skeleton_horse,type=!phantom] instant_damage 1 2 true

particle sweep_attack ~ ~ ~ 1.25 1.25 1.25 1 5 normal @a