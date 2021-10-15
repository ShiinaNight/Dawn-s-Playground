# 下界之星丢到灵魂火里变成五个固化灵魂
# 如果需要一个物品只能是原版物品，判定时nbt=!{Item:{tag:{}}}是必要的
# 这么多种判定是为了防止下界之星在合成前被烧掉ww
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{tag:{}}}] at @s if block ~ ~ ~ minecraft:soul_fire run function custom_recipes:soul_fire/solid_soul
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{tag:{}}}] at @s if block ~0.1 ~ ~ minecraft:soul_fire run function custom_recipes:soul_fire/solid_soul
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{tag:{}}}] at @s if block ~-0.1 ~ ~ minecraft:soul_fire run function custom_recipes:soul_fire/solid_soul
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{tag:{}}}] at @s if block ~ ~ ~0.1 minecraft:soul_fire run function custom_recipes:soul_fire/solid_soul
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{tag:{}}}] at @s if block ~ ~ ~-0.1 minecraft:soul_fire run function custom_recipes:soul_fire/solid_soul
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{tag:{}}}] at @s if block ~-0.1 ~ ~-0.1 minecraft:soul_fire run function custom_recipes:soul_fire/solid_soul
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{tag:{}}}] at @s if block ~0.1 ~ ~-0.1 minecraft:soul_fire run function custom_recipes:soul_fire/solid_soul
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{tag:{}}}] at @s if block ~0.1 ~ ~0.1 minecraft:soul_fire run function custom_recipes:soul_fire/solid_soul
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{tag:{}}}] at @s if block ~-0.1 ~ ~0.1 minecraft:soul_fire run function custom_recipes:soul_fire/solid_soul
# 固化灵魂和钢锭合成魂钢（不知道为啥，灵魂火的碰撞体积非常诡异，丢出去的物品只有一瞬间被认为是碰撞，只能采用计分板qwq）
execute as @e[type=item,nbt={Item:{tag:{id:"dawn:solid_soul"}}}] at @s if block ~ ~ ~ minecraft:soul_fire run scoreboard players set @s dawnTemper 1
execute as @e[type=item,nbt={Item:{tag:{id:"dawn:steel_ingot"}}}] at @s if block ~ ~ ~ minecraft:soul_fire run scoreboard players set @s dawnTemper 1
execute as @e[type=item,nbt={Item:{tag:{id:"dawn:solid_soul"}}},scores={dawnTemper=1}] at @s if entity @e[distance=..1,nbt={Item:{tag:{id:"dawn:steel_ingot"}}},scores={dawnTemper=1}] run function custom_recipes:soul_fire/soul_steel_ingot