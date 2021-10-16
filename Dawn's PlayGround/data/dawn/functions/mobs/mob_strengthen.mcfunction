# （待优化，以后试试把判定改成谓语）
# 僵尸类
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=zombie] run function dawn:mobs/zombies_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=zombie_villager] run function dawn:mobs/zombies_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=husk] run function dawn:mobs/zombies_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=drowned] run function dawn:mobs/zombies_strengthen
# 骷髅类&苦力怕
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=creeper] run function dawn:mobs/skeletons_and_creepers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=skeleton] run function dawn:mobs/skeletons_and_creepers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=stray] run function dawn:mobs/skeletons_and_creepers_strengthen
# 猪灵类&刌民类
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=piglin] run function dawn:mobs/pillagers_and_piglins_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=zombified_piglin] run function dawn:mobs/pillagers_and_piglins_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=pillager] run function dawn:mobs/pillagers_and_piglins_strengthen
# 精英怪类（猪灵蛮兵，唤魔者）
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=piglin_brute] run function dawn:mobs/infernal_mobs_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=evoker] run function dawn:mobs/infernal_mobs_strengthen
# 铁傀儡
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=iron_golem] run function dawn:mobs/iron_golem_strengthen