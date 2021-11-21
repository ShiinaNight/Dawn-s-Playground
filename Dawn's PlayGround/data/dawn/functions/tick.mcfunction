# Tick计分板相关
scoreboard players add @a dawnTwoTick 1
scoreboard players set @a[scores={dawnTwoTick=2..}] dawnTwoTick 0

# dawnSnkTim周期减少
scoreboard players remove @a[scores={dawnTwoTick=0,dawnSnkTim=1..}] dawnSnkTim 1

# dawnSkillTim持续减少
scoreboard players remove @a[scores={dawnSkillTim=1..}] dawnSkillTim 1

# 检测持续潜行时间
function dawn:players/is_sneaking
function dawn:players/keep_sneaking_time

# DeathCountDown持续减少
scoreboard players remove @e[scores={DeathCountDown=-9..}] DeathCountDown 1
# dawnParticle持续减少
scoreboard players remove @e[scores={dawnParticle=1..}] dawnParticle 1
# dawnTimStop持续减少
scoreboard players remove @e[scores={dawnTimStop=1..}] dawnTimStop 1

# dawnSkillPoint在技能未发动时持续增加（上限400,20s充满）
execute as @a unless score @s dawnSkillPoint matches 400.. unless score @s dawnSkillTim matches 1.. run scoreboard players add @s dawnSkillPoint 1
# DeathCountDown特效
# execute at @e[scores={DeathCountDown=0..}] run particle soul ~ ~1 ~ 0.2 0.2 0.2 0.1 2 normal @a
execute at @e[scores={DeathCountDown=0..}] run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 5 normal @a
execute at @e[scores={DeathCountDown=0}] run particle soul_fire_flame ~ ~1 ~ 0.4 0.4 0.4 0.5 30 normal @a
execute at @e[scores={DeathCountDown=0}] run particle soul ~ ~1 ~ 0.2 0.2 0.2 0.1 20 normal @a
# udib相关
function udib:tick
# 立刻杀死DeathCountDown归零的实体///更改：将DeathCountDown归零的实体传送到虚空并杀死
execute as @e[scores={DeathCountDown=0}] at @s run tp ~ ~-100 ~
kill @e[scores={DeathCountDown=0}]

# 通用伤害系统（为了防止bug，关闭对玩家的伤害系统）
# function ud:ud_dealt_player
function ud:ud_dealt_uplayer

# 玩家相关
execute as @e[type=player] run function dawn:players/tick
# 生物相关
execute as @e[type=!player,type=!item,type=!falling_block] run function dawn:mobs/tick
# 地板合成相关
function dawn:craft_on_floor/tick
# 符文袋相关
execute as @a run function dawn:rune_bag/tick
# 交易相关
execute as @e[type=item] run function dawn:trade/tick
# 子弹相关
execute as @e run function dawn:bullet/tick

# 测试
execute as @e[nbt={Fire:20400s}] run say "被dawn:test_sword击中"

# BOSS技能之类的
function dawn_boss:tick

# 检测攻击（请保持在最底下）

# scoreboard players set @e[scores={netherite_sword=1..}] netherite_sword 0
# scoreboard players set @e[scores={golden_sword=1..}] golden_sword 0
# scoreboard players set @e[scores={iron_sword=1..}] iron_sword 0

execute as @e[nbt=!{HurtByTimestamp:0},nbt={HurtTime:1s}] run data modify entity @s HurtByTimestamp set value 0