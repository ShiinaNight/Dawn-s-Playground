# 持续清空潜行值
scoreboard players set @s dawnKeepSnkTim 0
# 给予缓慢效果和反胃效果
effect give @s slowness 2 4 true
effect give @s nausea 4 4 true
# 减少眩晕时间
scoreboard players remove @s[scores={dawnFaint=1..}] dawnFaint 1