data modify entity @s HurtByTimestamp set value 0
# 打伤害
scoreboard players set @s udibThunderTims 0
scoreboard players set temper udibTemper 15
scoreboard players operation @s udibThunderDMG *= temper udibTemper
scoreboard players set temper udibTemper 10
scoreboard players operation @s udibThunderDMG /= temper udibTemper
scoreboard players set temper udibTemper 5
scoreboard players operation @s udibThunderDMG += temper udibTemper
scoreboard players operation @s udCounts += @s udibThunderDMG
# 叠buff（感电，每次加50，最多只有50）
scoreboard players set @s udibThunderLvl 50
# 特效、反馈
execute at @s run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal @a
tellraw @p [{"text":"对","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"造成了","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"udibThunderDMG","name":"@s"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"点雷电伤害","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @p [{"selector":"@s","color":"aqua"},{"text":"的属性：着火","color":"gray"},{"score":{"objective":"udibFireLvl","name":"@s"},"color":"red"},{"text":"层，感电","color":"gray"},{"score":{"objective":"udibThunderLvl","name":"@s"},"color":"blue"},{"text":"t","color":"gray"}]
# 计算公式：最终伤害 = udibThunderDMG * 1.5 + 5

# 归零
scoreboard players set @s udibThunderDMG 0