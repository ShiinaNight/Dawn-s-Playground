execute if score @s[predicate=dawn:guns/druzhina_34] dawnKeepSnkTim matches 1.. run title @s actionbar [{"text":"RELOADING ","color":"gray"},{"score":{"objective":"dawnKeepSnkTim","name":"@s"},"color":"green"},{"text":"/60","color":"gray"}]
execute if score @s[predicate=dawn:guns/druzhina_34] dawnKeepSnkTim matches 60 run function dawn:reload/druzhina_34
