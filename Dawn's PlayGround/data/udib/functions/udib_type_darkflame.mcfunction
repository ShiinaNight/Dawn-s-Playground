data modify entity @s HurtByTimestamp set value 0
# 打伤害
scoreboard players operation @s udibDarkFlameDMG *= @s udibFireLvl
scoreboard players set temper udibTemper 70
scoreboard players operation @s udibDarkFlameDMG /= temper udibTemper
scoreboard players set temper udibTemper 5
scoreboard players operation @s udibDarkFlameDMG += temper udibTemper
scoreboard players operation @s udCounts += @s udibDarkFlameDMG
# 叠buff（着火，每次加20）
scoreboard players add @s udibFireLvl 20
# 特效、反馈
execute at @s run particle lava ~ ~1 ~ 0.2 0.2 0.2 0.1 15 normal @a
tellraw @p [{"text":"对","color":"gold"},{"selector":"@s","color":"aqua"},{"text":"造成了","color":"gold"},{"score":{"objective":"udibDarkFlameDMG","name":"@s"},"color":"red"},{"text":"点暗火伤害，已叠加","color":"gold"},{"score":{"objective":"udibFireLvl","name":"@s"},"color":"red"},{"text":"层着火效果","color":"gold"}]
# 计算公式：最终伤害 = udibDarkFlameDMG * udibFireLvl / 70 + 5

# 归零
scoreboard players set @s udibDarkFlameDMG 0