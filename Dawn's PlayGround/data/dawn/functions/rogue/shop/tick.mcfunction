# 固定商品
execute as @e[type=armor_stand,tag=shop] at @s run tp @e[type=item,distance=..0.2] ~ ~ ~
# 获取钱数
execute as @a[predicate=dawn:mainhand/pure_gold_ingot] store result score @s dawnPureGoldIngot run data get entity @s SelectedItem.Count
scoreboard players reset @a[predicate=!dawn:mainhand/pure_gold_ingot,scores={dawnPureGoldIngot=1..}] dawnPureGoldIngot