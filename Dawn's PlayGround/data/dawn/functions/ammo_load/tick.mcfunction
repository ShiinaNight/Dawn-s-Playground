scoreboard players remove @s[predicate=dawn:guns/druzhina_34,scores={dawnDelayDzn34=1..}] dawnDelayDzn34 1
scoreboard players remove @s[predicate=dawn:guns/striker,scores={dawnDelayStriker=1..}] dawnDelayStriker 1


# 俄罗斯亲卫兵（设置延迟，上弹，提示）
execute as @s[predicate=dawn:guns/druzhina_34] unless entity @s[predicate=dawn:guns/loaded] if score @s crossbow matches 1.. run function dawn:ammo_load/druzhina_34_set_delay
execute as @s[predicate=dawn:guns/druzhina_34] unless entity @s[predicate=dawn:guns/loaded] if score @s dawnDelayDzn34 matches 0 if score @s dawnAmmoDzn34 matches 1.. run function dawn:ammo_load/druzhina_34
execute as @s[predicate=dawn:guns/druzhina_34] unless score @s dawnKeepSnkTim matches 1.. run title @s actionbar [{"text":"AMMO ","color":"gray"},{"score":{"objective":"dawnAmmoDzn34","name":"@s"},"color":"green"},{"text":"/8","color":"gray"},{"text":" LOAD ","color":"gray"},{"score":{"objective":"dawnDelayDzn34","name":"@s"},"color":"green"},{"text":"t ","color":"green"},{"text":"left","color":"gray"}]
# P90
execute as @s[predicate=dawn:guns/p90] unless entity @s[predicate=dawn:guns/loaded] if score @s crossbow matches 1.. run function dawn:ammo_load/p90_set_delay
execute as @s[predicate=dawn:guns/p90] unless entity @s[predicate=dawn:guns/loaded] if score @s dawnDelayP90 matches 0 if score @s dawnAmmoP90 matches 1.. run function dawn:ammo_load/p90
execute as @s[predicate=dawn:guns/p90] unless score @s dawnKeepSnkTim matches 1.. run title @s actionbar [{"text":"AMMO ","color":"gray"},{"score":{"objective":"dawnAmmoP90","name":"@s"},"color":"green"},{"text":"/50","color":"gray"},{"text":" LOAD ","color":"gray"},{"score":{"objective":"dawnDelayP90","name":"@s"},"color":"green"},{"text":"t ","color":"green"},{"text":"left","color":"gray"}]
# 打击者
execute as @s[predicate=dawn:guns/striker] unless entity @s[predicate=dawn:guns/loaded] if score @s crossbow matches 1.. run function dawn:ammo_load/striker_set_delay
execute as @s[predicate=dawn:guns/striker] unless entity @s[predicate=dawn:guns/loaded] if score @s dawnDelayStriker matches 0 if score @s dawnAmmoStriker matches 1.. run function dawn:ammo_load/striker
execute as @s[predicate=dawn:guns/striker] unless score @s dawnKeepSnkTim matches 1.. run title @s actionbar [{"text":"AMMO ","color":"gray"},{"score":{"objective":"dawnAmmoStriker","name":"@s"},"color":"green"},{"text":"/7","color":"gray"},{"text":" LOAD ","color":"gray"},{"score":{"objective":"dawnDelayStriker","name":"@s"},"color":"green"},{"text":"t ","color":"green"},{"text":"left","color":"gray"}]