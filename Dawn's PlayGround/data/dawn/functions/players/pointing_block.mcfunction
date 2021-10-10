# execute unless entity @s[distance=..6] run say none
# execute if entity @s[distance=..6] if block ~ ~ ~ stone run say 1
# execute if entity @s[distance=..6] unless block ~ ~ ~ stone positioned ^ ^ ^0.005 run function dawn:players/pointing_block
# ↑来自https://www.mcbbs.net/forum.php?mod=viewthread&tid=771638的源代码（要解锁卡的）

execute unless entity @s[distance=..6] run say none
execute if entity @s[distance=..6] unless block ~ ~ ~ air run function dawn:crafting_table/tick
execute if entity @s[distance=..6] if block ~ ~ ~ air positioned ^ ^ ^0.005 run function dawn:players/pointing_block