scoreboard players set temper udibTemper 70
scoreboard players operation @s udibMagicDMG /= temper udibTemper
scoreboard players set temper udibTemper 5
scoreboard players operation @s udibMagicDMG += temper udibTemper
scoreboard players operation @s udCounts = @s udibMagicDMG
tellraw @p [{"text":"对","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"造成了","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"udCounts","name":"@s"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"点暗火伤害，已叠加","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"udibFireLvl","name":"@s"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"层着火效果","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]