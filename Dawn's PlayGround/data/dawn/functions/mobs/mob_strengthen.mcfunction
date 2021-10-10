# （待优化，以后试试把判定改成谓语）
# 僵尸类
execute as @s[type=zombie,nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run function dawn:mobs/zombies_strengthen
execute as @s[type=zombie_villager,nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run function dawn:mobs/zombies_strengthen
execute as @s[type=husk,nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run function dawn:mobs/zombies_strengthen

# 骷髅类和苦力怕类
execute as @s[type=skeleton,nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run function dawn:mobs/skeletons_and_creepers_strengthen
execute as @s[type=creeper,nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run function dawn:mobs/skeletons_and_creepers_strengthen

# 猪灵类和刌民类
execute as @s[type=piglin,nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run function dawn:mobs/pillagers_and_piglins_strengthen
execute as @s[type=piglin_brute,nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run function dawn:mobs/pillagers_and_piglins_strengthen
execute as @s[type=zombified_piglin,nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run function dawn:mobs/pillagers_and_piglins_strengthen
execute as @s[type=pillager,nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run function dawn:mobs/pillagers_and_piglins_strengthen