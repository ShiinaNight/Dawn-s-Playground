scoreboard players operation @s udibMagicDMG *= @s udibFireLvl
scoreboard players add @s udibFireLvl 20
function udib:udib_dealt_uplayer
# 计算公式：最终伤害 = udibMagicDMG * udibFireLvl / 70 + 5