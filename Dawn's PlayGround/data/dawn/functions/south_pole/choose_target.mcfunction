# 按照优先度选择射击目标（优先度递减：-1,1,2）
execute as @e[scores={SPTarget=0}] at @s run function dawn:south_pole/shoot
execute unless entity @e[scores={SPTarget=0}] as @e[scores={SPTarget=1}] at @s run function dawn:south_pole/shoot
execute unless entity @e[scores={SPTarget=0}] unless entity @e[scores={SPTarget=1}] as @e[scores={SPTarget=2}] at @s run function dawn:south_pole/shoot