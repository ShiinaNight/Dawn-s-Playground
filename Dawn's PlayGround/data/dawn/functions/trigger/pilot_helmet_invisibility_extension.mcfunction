# 清除被丢出的触发器
kill @e[distance=..1,type=item,predicate=dawn:trigger/pilot_helmet_invisibility_extension,limit=1]
loot give @s loot dawn:triggers/pilot_helmet_invisibility_extension
# 判断是否技力足够，并运行函数
execute if score @s dawnSkillPoint matches 200.. run function dawn:skills/pilot_helmet_invisibility_extension
execute unless score @s dawnSkillPoint matches 200.. run tellraw @s [{"text": "技力不足 (","color": "gray"},{"score":{"objective":"dawnSkillPoint","name":"@s"},"color": "green"},{"text": "/200 )","color": "gray"}]