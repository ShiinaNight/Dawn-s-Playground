# execute unless entity @s[distance=..6] run say none
# execute if entity @s[distance=..6] if block ~ ~ ~ stone run say 1
# execute if entity @s[distance=..6] unless block ~ ~ ~ stone positioned ^ ^ ^0.005 run function dawn:players/pointing_block
# ↑来自https://www.mcbbs.net/forum.php?mod=viewthread&tid=771638的源代码（要解锁卡的）
execute if entity @s[distance=..3] if entity @e[type=arrow,distance=..0.3] run function dawn:weapons/guns
execute if entity @s[distance=..3] unless entity @e[type=arrow,distance=..0.3] positioned ^ ^ ^0.005 run function dawn:players/pointing_entity