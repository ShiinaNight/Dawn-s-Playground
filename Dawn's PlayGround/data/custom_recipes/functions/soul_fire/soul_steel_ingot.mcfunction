kill @e[type=item,limit=1,distance=..1,nbt={Item:{tag:{id:"dawn:steel_ingot"}}}]
kill @s
summon chest_minecart ~ ~ ~ {LootTable:"dawn:soul_steel_ingot"}
kill @e[type=chest_minecart,distance=..1,limit=1]