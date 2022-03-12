# 检测持续潜行时间
function dawn:players/is_sneaking
function dawn:players/keep_sneaking_time

# dawnSkillTim持续减少
scoreboard players remove @a[scores={dawnSkillTim=1..}] dawnSkillTim 1

# dawnSkillPoint在技能未发动时持续增加（上限400,20s充满）
execute as @a unless score @s dawnSkillPoint matches 400.. unless score @s dawnSkillTim matches 1.. run scoreboard players add @s dawnSkillPoint 1


# 玩家相关
execute as @e[type=player] run function dawn:players/tick
# 符文袋相关
execute as @a run function dawn:rune_bag/tick
# 生物相关
execute as @e[type=!player,type=!item,type=!falling_block] run function dawn:mobs/tick
# 竞技场技能相关
# function dawn_skills:tick

# 芊汐纸鸢技能
execute as @e[type=item,predicate=dawn:item/tags/shutsu_crane] at @s unless score @s dawnTemperDelay matches 1 if entity @a[distance=..1,scores={dawnKeepSnkTim=1..}] run function dawn:skills/shutsu_crane/start
execute as @e[type=item,predicate=dawn:item/tags/shutsu_crane_overload] at @s unless score @s dawnTemperDelay matches 1 if entity @a[distance=..1,scores={dawnKeepSnkTim=1..}] run function dawn:skills/shutsu_crane/end
execute as @a[predicate=dawn:inventory/shutsu_crane_overload] run function dawn:skills/shutsu_crane/main


# dawnParticle持续减少
scoreboard players remove @e[scores={dawnParticle=1..}] dawnParticle 1

# DeathCountDown持续减少
scoreboard players remove @e[scores={DeathCountDown=-9..}] DeathCountDown 1
# DeathCountDown特效
execute as @e[scores={DeathCountDown=0..},tag=!no_particle] run function dawn:particles/death_count_down
# 立刻杀死DeathCountDown归零的实体///更改：将DeathCountDown归零的实体传送到虚空并杀死
execute as @e[scores={DeathCountDown=0}] at @s run tp ~ ~-100 ~
kill @e[scores={DeathCountDown=0}]

# 通用伤害系统（为了防止bug，关闭对玩家的伤害系统）
# function ud:ud_dealt_player
function ud:ud_dealt_uplayer

# 交易相关
execute as @e[type=item] run function dawn:trade/tick

# 南极
# execute if entity @a in dawn:cave run function south_pole:tick
