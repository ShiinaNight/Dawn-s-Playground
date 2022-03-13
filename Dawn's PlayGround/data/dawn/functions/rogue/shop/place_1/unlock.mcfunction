# 扣钱
clear @s gold_ingot{display:{Name:'{"text":"赤金锭","italic":false,"color":"gold"}'}} 32
# 解锁物品
execute at @e[type=armor_stand,tag=place_1] as @e[type=item,distance=..0.01,tag=shop_item] run data modify entity @s PickupDelay set value 0