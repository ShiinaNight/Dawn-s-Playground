# 钢锭和下界合金合成锻钢锭（其实是神圣锭ww）（叫锻钢锭是因为圣剑改名叫了断钢剑，但根本没有断钢锭这玩意，于是就改名叫锻钢锭）
# 如果需要一个物品只能是原版物品，判定时nbt=!{Item:{tag:{}}}是必要的
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},nbt=!{Item:{tag:{}}}] at @s if block ~ ~ ~ minecraft:lava run execute at @e[distance=..1,nbt={Item:{tag:{id:"dawn:steel_ingot"}}}] if block ~ ~ ~ minecraft:lava run function custom_recipes:lava/hallowed_ingot