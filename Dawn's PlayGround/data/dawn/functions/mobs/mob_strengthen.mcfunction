# （待优化，以后试试把判定改成谓语）
# 僵尸类/150HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=zombie] run function dawn:mobs/zombies_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=zombie_villager] run function dawn:mobs/zombies_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=husk] run function dawn:mobs/zombies_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=drowned] run function dawn:mobs/zombies_strengthen
# 骷髅类&苦力怕/100HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=creeper] run function dawn:mobs/skeletons_and_creepers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=skeleton] run function dawn:mobs/skeletons_and_creepers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=stray] run function dawn:mobs/skeletons_and_creepers_strengthen
# 蜘蛛类&恶魂/50HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=ghast] run function dawn:mobs/spiders_and_ghast_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=spider] run function dawn:mobs/spiders_and_ghast_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=cave_spider] run function dawn:mobs/spiders_and_ghast_strengthen
# 地狱生物（猪灵，僵尸猪灵，烈焰人，凋零骷髅）&刌民类/200HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=piglin] run function dawn:mobs/pillagers_and_nethers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=zombified_piglin] run function dawn:mobs/pillagers_and_nethers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=blaze] run function dawn:mobs/pillagers_and_nethers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=wither_skeleton] run function dawn:mobs/pillagers_and_nethers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=pillager] run function dawn:mobs/pillagers_and_nethers_strengthen
# 精英怪类（猪灵蛮兵，唤魔者，守卫者）/300HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=piglin_brute] run function dawn:mobs/infernal_mobs_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=evoker] run function dawn:mobs/infernal_mobs_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=guardian] run function dawn:mobs/infernal_mobs_strengthen
# 铁傀儡/1000HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=iron_golem] run function dawn:mobs/iron_golem_strengthen
# 末影龙/2000HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=ender_dragon] run function dawn:mobs/ender_dragen_strengthen
# 凋零/3000HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=wither] run function dawn:mobs/wither_strengthen
# 远古守卫者/5000HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=elder_guardian] run function dawn:mobs/elder_guardian_strengthen