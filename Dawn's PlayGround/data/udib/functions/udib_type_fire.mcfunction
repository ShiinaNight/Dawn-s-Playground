data modify entity @s HurtByTimestamp set value 0
# 打伤害
scoreboard players set @s udibFireTims 0
scoreboard players set temper udibTemper 15
scoreboard players operation @s udibFireDMG *= temper udibTemper
scoreboard players set temper udibTemper 10
scoreboard players operation @s udibFireDMG /= temper udibTemper
scoreboard players set temper udibTemper 5
scoreboard players operation @s udibFireDMG += temper udibTemper
scoreboard players operation @s udCounts += @s udibFireDMG
# 叠buff（着火，每次加100，只会在有着火（即最近被暗火宝石击中）时生效）
scoreboard players add @s[scores={udibFireLvl=1..}] udibFireLvl 100
# 特效、反馈
execute at @s run particle lava ~ ~1 ~ 0.2 0.2 0.2 0.1 15 normal @a
tellraw @p [{"text":"对","color":"gold"},{"selector":"@s","color":"aqua"},{"text":"造成了","color":"gold"},{"score":{"objective":"udibFireDMG","name":"@s"},"color":"red"},{"text":"点火焰伤害","color":"gold"}]
# 元素反应
execute as @s[scores={udibThunderLvl=1..}] run function udib:udib_extra_thunder
# 反馈
execute as @s store result score @s wailaHealthBar run data get entity @s Health
scoreboard players operation @s wailaHealthBar -= @s udCounts
scoreboard players set @s[scores={wailaHealthBar=..0}] wailaHealthBar 0
tellraw @p [{"selector":"@s","color":"aqua"},{"text":"的属性：剩余","color":"gray"},{"score":{"objective":"wailaHealthBar","name":"@s"},"color":"green"},{"text":"HP，着火","color":"gray"},{"score":{"objective":"udibFireLvl","name":"@s"},"color":"red"},{"text":"层，感电","color":"gray"},{"score":{"objective":"udibThunderLvl","name":"@s"},"color":"blue"},{"text":"t","color":"gray"}]


# 计算公式：最终伤害 = udibFireDMG * 1.5 + 5

# 归零
scoreboard players set @s udibFireDMG 0