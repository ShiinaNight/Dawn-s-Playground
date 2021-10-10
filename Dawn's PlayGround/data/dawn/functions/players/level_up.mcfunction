# 随着等级增加增加血量上限
execute as @s[predicate=dawn:xp/lvl1_5,nbt=!{Attributes:[{Name:"minecraft:generic.max_health",Base:20.0}]}] run attribute @s generic.max_health base set 20
execute as @s[predicate=dawn:xp/lvl6_10,nbt=!{Attributes:[{Name:"minecraft:generic.max_health",Base:30.0}]}] run attribute @s generic.max_health base set 30
execute as @s[predicate=dawn:xp/lvl11_20,nbt=!{Attributes:[{Name:"minecraft:generic.max_health",Base:40.0}]}] run attribute @s generic.max_health base set 40
execute as @s[predicate=dawn:xp/lvl21_30,nbt=!{Attributes:[{Name:"minecraft:generic.max_health",Base:50.0}]}] run attribute @s generic.max_health base set 50
execute as @s[predicate=dawn:xp/lvl30_,nbt=!{Attributes:[{Name:"minecraft:generic.max_health",Base:60.0}]}] run attribute @s generic.max_health base set 60