execute as @e[type=item,limit=1,distance=..6] run data modify entity @s Item.tag.Tags append value "fire_4"
execute as @e[type=item,limit=1,distance=..6,nbt=!{Item:{tag:{id:"dawn:solar_sword"}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"+4 火焰伤害\",\"italic\":false,\"color\":\"blue\"}"
execute as @e[type=item,limit=1,distance=..6,nbt={Item:{tag:{id:"dawn:solar_sword"}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"+40 火焰伤害\",\"italic\":false,\"color\":\"blue\"}"