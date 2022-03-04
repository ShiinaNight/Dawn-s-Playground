# （待优化，以后试试把判定改成谓语）
# 僵尸类/150HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=zombie,tag=!boss,tag=!special] run function dawn:mobs/zombies_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=zombie_villager,tag=!boss,tag=!special] run function dawn:mobs/zombies_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=husk,tag=!boss,tag=!special] run function dawn:mobs/zombies_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=drowned,tag=!boss,tag=!special] run function dawn:mobs/zombies_strengthen
# 骷髅类/100HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=skeleton,tag=!boss,tag=!special] run function dawn:mobs/skeletons_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=stray,tag=!boss,tag=!special] run function dawn:mobs/skeletons_strengthen
# 苦力怕/100HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=creeper,tag=!boss,tag=!special] run function dawn:mobs/creepers_strengthen
# 蜘蛛类&恶魂/50HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=ghast,tag=!boss,tag=!special] run function dawn:mobs/spiders_and_ghast_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=spider,tag=!boss,tag=!special] run function dawn:mobs/spiders_and_ghast_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=cave_spider,tag=!boss,tag=!special] run function dawn:mobs/spiders_and_ghast_strengthen
# 地狱生物（猪灵，烈焰人）&刌民类/200HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=piglin,tag=!boss,tag=!special] run function dawn:mobs/pillagers_and_nethers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=blaze,tag=!boss,tag=!special] run function dawn:mobs/pillagers_and_nethers_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=pillager,tag=!boss,tag=!special] run function dawn:mobs/pillagers_and_nethers_strengthen
# 地狱亡灵生物（僵尸猪灵，凋零骷髅）
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=zombified_piglin,tag=!boss,tag=!special] run function dawn:mobs/nethers_undead_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=wither_skeleton,tag=!boss,tag=!special] run function dawn:mobs/nethers_undead_strengthen
# 精英怪类（末影人，猪灵蛮兵，唤魔者，守卫者）/300HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=enderman,tag=!boss,tag=!special] run function dawn:mobs/infernal_mobs_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=piglin_brute,tag=!boss,tag=!special] run function dawn:mobs/infernal_mobs_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=evoker,tag=!boss,tag=!special] run function dawn:mobs/infernal_mobs_strengthen
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=guardian,tag=!boss,tag=!special] run function dawn:mobs/infernal_mobs_strengthen
# 铁傀儡/1000HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=iron_golem,tag=!boss,tag=!special] run function dawn:mobs/iron_golem_strengthen
# 末影龙/1024HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=ender_dragon,tag=!boss,tag=!special] run function dawn:mobs/ender_dragen_strengthen
# 凋零/1024HP
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=wither,tag=!boss,tag=!special] run function dawn:mobs/wither_strengthen
# 远古守卫者/1024HP,80%减伤
execute unless entity @s[scores={dawnMobStreng=1}] run execute as @s[type=elder_guardian,tag=!boss,tag=!special] run function dawn:mobs/elder_guardian_strengthen
# 幻翼
execute as @e[type=phantom] run scoreboard players set @s dawnUnDead 1
# 标记公会门卫为亡灵
execute as @e[tag=guild_guard] unless score @s dawnUnDead matches 1 run scoreboard players set @s dawnUnDead 1