# dawn:test_item
execute if data block ~ ~ ~ {Items:[{Slot:1b,tag:{id:"dawn:sleeping_beauty"},Count:1b},{Slot:3b,tag:{id:"dawn:sleeping_beauty"},Count:1b},{Slot:4b,tag:{id:"dawn:sleeping_beauty"},Count:1b},{Slot:5b,tag:{id:"dawn:sleeping_beauty"},Count:1b},{Slot:7b,tag:{id:"dawn:sleeping_beauty"},Count:1b}]} unless data block ~ ~ ~ {Items:[{Slot:0b},{Slot:2b},{Slot:6b},{Slot:8b}]} run function custom_recipes:dropper/test_item
# 断钢剑
execute if data block ~ ~ ~ {Items:[{Slot:1b,tag:{id:"dawn:hallowed_ingot"},Count:1b},{Slot:3b,tag:{id:"dawn:hallowed_ingot"},Count:1b},{Slot:4b,id:"minecraft:golden_sword",Count:1b},{Slot:5b,tag:{id:"dawn:hallowed_ingot"},Count:1b},{Slot:7b,tag:{id:"dawn:hallowed_ingot"},Count:1b}]} unless data block ~ ~ ~ {Items:[{Slot:0b},{Slot:2b},{Slot:6b},{Slot:8b}]} run function custom_recipes:dropper/excalibur
# 收割者
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{id:"dawn:soul_steel_ingot"},Count:1b},{Slot:1b,tag:{id:"dawn:soul_steel_ingot"},Count:1b},{Slot:2b,tag:{id:"dawn:soul_steel_ingot"},Count:1b},{Slot:5b,id:"minecraft:stick",Count:1b},{Slot:8b,id:"minecraft:stick",Count:1b}]} unless data block ~ ~ ~ {Items:[{Slot:3b},{Slot:4b},{Slot:6b},{Slot:7b}]} run function custom_recipes:dropper/reaper_sickle
# 育碧服务器
execute if data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:baked_potato",Count:64b},{Slot:1b,id:"minecraft:baked_potato",Count:64b},{Slot:2b,id:"minecraft:baked_potato",Count:64b},{Slot:3b,id:"minecraft:baked_potato",Count:64b},{Slot:4b,id:"minecraft:baked_potato",Count:64b},{Slot:5b,id:"minecraft:baked_potato",Count:64b},{Slot:6b,id:"minecraft:baked_potato",Count:64b},{Slot:7b,id:"minecraft:baked_potato",Count:64b},{Slot:8b,id:"minecraft:baked_potato",Count:64b}]} run function custom_recipes:dropper/ubisoft_server
# 育碧之怒
execute if data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:baked_potato",Count:64b},{Slot:1b,tag:{id:"dawn:error_block"},Count:1b},{Slot:2b,id:"minecraft:baked_potato",Count:64b},{Slot:3b,tag:{id:"dawn:error_block"},Count:1b},{Slot:4b,tag:{id:"dawn:ubisoft_server"},Count:1b},{Slot:5b,tag:{id:"dawn:error_block"},Count:1b},{Slot:6b,id:"minecraft:baked_potato",Count:64b},{Slot:7b,tag:{id:"dawn:error_block"},Count:1b},{Slot:8b,id:"minecraft:baked_potato",Count:64b}]} run function custom_recipes:dropper/rage_of_ubisoft
# 记忆中的剑 - 升级
execute if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b},{Slot:3b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b},{Slot:4b,id:"minecraft:netherite_ingot",Count:1b},{Slot:5b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b},{Slot:6b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b},{Slot:7b,id:"minecraft:iron_sword",tag:{id:"dawn:the_sword_in_memory"},Count:1b},{Slot:8b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b}]} unless data block ~ ~ ~ {Items:[{Slot:0b},{Slot:2b}]} run function custom_recipes:dropper/the_sword_in_memory/plus_1
# 芊汐纸鸢 - 升级
execute if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b},{Slot:3b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b},{Slot:4b,id:"minecraft:netherite_ingot",Count:1b},{Slot:5b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b},{Slot:6b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b},{Slot:7b,id:"minecraft:netherite_sword",tag:{id:"dawn:shutsu_crane"},Count:1b},{Slot:8b,id:"minecraft:diamond",tag:{id:"south_pole:antarcticite"},Count:1b}]} unless data block ~ ~ ~ {Items:[{Slot:0b},{Slot:2b}]} run function custom_recipes:dropper/shutsu_crane/plus_1


# 海洋棱镜
execute if data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:1b,id:"minecraft:iron_sword",tag:{id:"dawn:tide"},Count:1b},{Slot:2b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:3b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:4b,id:"minecraft:diamond",tag:{id:"dawn:empty_prism"},Count:1b},{Slot:5b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:6b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:7b,id:"minecraft:conduit",Count:1b},{Slot:8b,id:"minecraft:light_blue_stained_glass",Count:1b}]} unless data block ~ ~ ~ {Items:[]} run function custom_recipes:dropper/prism/ocean_prism