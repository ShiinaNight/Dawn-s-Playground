# 主手拿着铁驭头盔时潜行会给予触发器
execute as @s[predicate=dawn:mainhand/pilot_helmet] if score @s dawnKeepSnkTim matches 1 run loot give @s loot dawn:triggers/pilot_helmet_invisibility_extension