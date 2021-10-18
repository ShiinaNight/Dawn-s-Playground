execute as @e[scores={udibMagicDMG=1..}] run scoreboard players operation @s udibMagicDMG %= @s udibTemper
execute as @e[scores={udibMagicDMG=1..}] run scoreboard players operation @s udCounts = @s udibMagicDMG
say 2
# 重点：想办法把执行者改回自己