data modify entity @s HurtByTimestamp set value 0

scoreboard players operation @s udibDarkFlameDMG *= @s udibFireLvl
scoreboard players add @s udibFireLvl 20
scoreboard players set temper udibTemper 70
scoreboard players operation @s udibDarkFlameDMG /= temper udibTemper
scoreboard players set temper udibTemper 5
scoreboard players operation @s udibDarkFlameDMG += temper udibTemper
scoreboard players operation @s udCounts = @s udibDarkFlameDMG
execute at @s run particle lava ~ ~1 ~ 0.2 0.2 0.2 0.1 15 normal @a
tellraw @p [{"text":"对","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"造成了","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"udCounts","name":"@s"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"点暗火伤害，已叠加","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"udibFireLvl","name":"@s"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"层着火效果","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
# 计算公式：最终伤害 = udibDarkFlameDMG * udibFireLvl / 70 + 5