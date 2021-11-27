# 俄罗斯亲卫兵（提示&主函数）
execute if score @s[predicate=dawn:guns/druzhina_34,predicate=dawn:offhand/_50_russian_8x_clip] dawnKeepSnkTim matches 1..60 run title @s actionbar [{"text":"RELOADING ","color":"gray"},{"score":{"objective":"dawnKeepSnkTim","name":"@s"},"color":"green"},{"text":"/60","color":"gray"}]
execute if score @s[predicate=dawn:guns/druzhina_34,predicate=dawn:offhand/_50_russian_8x_clip] dawnKeepSnkTim matches 60 run function dawn:reload/druzhina_34
# P90
execute if score @s[predicate=dawn:guns/p90,predicate=dawn:offhand/ss90_50x_clip] dawnKeepSnkTim matches 1..30 run title @s actionbar [{"text":"RELOADING ","color":"gray"},{"score":{"objective":"dawnKeepSnkTim","name":"@s"},"color":"green"},{"text":"/30","color":"gray"}]
execute if score @s[predicate=dawn:guns/p90,predicate=dawn:offhand/ss90_50x_clip] dawnKeepSnkTim matches 30 run function dawn:reload/p90
# 打击者
execute if score @s[predicate=dawn:guns/striker,predicate=dawn:offhand/_452_magnum_7x_clip] dawnKeepSnkTim matches 1..20 run title @s actionbar [{"text":"RELOADING ","color":"gray"},{"score":{"objective":"dawnKeepSnkTim","name":"@s"},"color":"green"},{"text":"/20","color":"gray"}]
execute if score @s[predicate=dawn:guns/striker,predicate=dawn:offhand/_452_magnum_7x_clip] dawnKeepSnkTim matches 20 run function dawn:reload/striker

