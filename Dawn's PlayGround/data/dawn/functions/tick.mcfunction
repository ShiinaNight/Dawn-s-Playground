# Tick计分板相关
scoreboard players add @a dawnTwoTick 1
scoreboard players set @a[scores={dawnTwoTick=2..}] dawnTwoTick 0

# dawnSnkTim周期减少
scoreboard players remove @a[scores={dawnTwoTick=0,dawnSnkTim=1..}] dawnSnkTim 1
# DeathCountDown持续减少
scoreboard players remove @e[scores={DeathCountDown=-9..}] DeathCountDown 1
# dawnParticle持续减少
scoreboard players remove @e[scores={dawnParticle=1..}] dawnParticle 1
# dawnTimStop持续减少
scoreboard players remove @e[scores={dawnTimStop=1..}] dawnTimStop 1
# DeathCountDown特效
execute at @e[scores={DeathCountDown=0..}] run particle soul ~ ~1 ~ 0.2 0.2 0.2 0.1 2 normal @a
# udib相关
function udib:tick
# 立刻杀死DeathCountDown归零的实体
kill @e[scores={DeathCountDown=0}]

# 通用伤害系统
function ud:ud_dealt_player
function ud:ud_dealt_uplayer

# 玩家相关
execute as @e[type=player] run function dawn:players/tick
# 生物相关
execute as @e[type=!player,type=!item,type=!falling_block] run function dawn:mobs/tick
# 地板合成相关
function dawn:craft_on_floor/tick

# 测试
execute as @e[nbt={Fire:20400s}] run say "被dawn:test_sword击中"