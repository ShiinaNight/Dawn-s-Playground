# 检测持续潜行时间
function dawn:players/is_sneaking
function dawn:players/keep_sneaking_time

# 玩家相关
execute as @e[type=player] run function dawn:players/tick
# 符文袋相关
execute as @a run function dawn:rune_bag/tick
# 生物相关
execute as @e[type=!player,type=!item,type=!falling_block] run function dawn:mobs/tick

# dawnParticle持续减少
scoreboard players remove @e[scores={dawnParticle=1..}] dawnParticle 1

# DeathCountDown持续减少
scoreboard players remove @e[scores={DeathCountDown=-9..}] DeathCountDown 1
# DeathCountDown特效
# execute at @e[scores={DeathCountDown=0..}] run particle soul ~ ~1 ~ 0.2 0.2 0.2 0.1 2 normal @a
execute at @e[scores={DeathCountDown=0..}] run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 5 normal @a
execute at @e[scores={DeathCountDown=0}] run particle soul_fire_flame ~ ~1 ~ 0.4 0.4 0.4 0.5 30 normal @a
execute at @e[scores={DeathCountDown=0}] run particle soul ~ ~1 ~ 0.2 0.2 0.2 0.1 20 normal @a
# 立刻杀死DeathCountDown归零的实体///更改：将DeathCountDown归零的实体传送到虚空并杀死
execute as @e[scores={DeathCountDown=0}] at @s run tp ~ ~-100 ~
kill @e[scores={DeathCountDown=0}]

# 交易相关
execute as @e[type=item] run function dawn:trade/tick

# 南极
execute if entity @a in dawn:cave run function south_pole:tick