data modify entity @s HurtByTimestamp set value 0
# 打伤害
scoreboard players operation @s udibThunderDMG += @s udibFireDMG
scoreboard players operation @s udCounts += @s udibThunderDMG
# 特效、反馈
execute at @s run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal @a
tellraw @p [{"text":"元素反应：","color":"green"},{"text":"过载","color":"dark_purple"},{"text":" 额外对","color":"green"},{"selector":"@s","color":"aqua"},{"text":"造成了","color":"green"},{"score":{"objective":"udibThunderDMG","name":"@s"},"color":"red"},{"text":"点雷电伤害","color":"green"}]
# 归零
scoreboard players set @s udibThunderDMG 0