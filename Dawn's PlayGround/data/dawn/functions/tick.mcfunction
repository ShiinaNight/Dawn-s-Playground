# Tick计分板相关
scoreboard players add @a dawnTwoTick 1
scoreboard players set @a[scores={dawnTwoTick=1..}] dawnTwoTick 0

# dawnSnkTim周期减少
scoreboard players remove @a[scores={dawnTwoTick=0}] dawnSnkTim 1

# 玩家相关
execute as @e[type=player] run function dawn:players/tick