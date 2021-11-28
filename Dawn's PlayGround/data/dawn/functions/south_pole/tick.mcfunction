# 对进入禁区的人发出警告
execute at @e[tag=forbidden_zone] as @a[distance=..150] run function dawn:south_pole/warn
# 将进入禁区并且距离中心最近的人设为1级目标
execute at @e[tag=forbidden_zone] as @a[distance=..128,sort=nearest,gamemode=!creative,gamemode=!spectator,limit=1] run function dawn:south_pole/set_target_1
# 选择目标
execute unless score south_pole SPReloading matches 1.. run function dawn:south_pole/choose_target
# 换弹
execute if score south_pole SPReloading matches 1.. run scoreboard players remove south_pole SPReloading 1
# 已被击杀的玩家清除优先级
scoreboard players reset @a[nbt={Health:0f}] SPTarget
# 1级目标头上显示红色粒子
execute as @e[scores={SPTarget=1}] at @s run particle dust 1 0 0 1 ~ ~2.3 ~ 0 0 0 1.0 1 normal @a