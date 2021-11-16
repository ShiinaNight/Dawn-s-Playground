# execute as @s store result entity @s Motion[0] double 2.0 run data get entity @s Motion[0]
# execute as @s store result entity @s Motion[1] double 2.0 run data get entity @s Motion[1]
# execute as @s store result entity @s Motion[2] double 2.0 run data get entity @s Motion[2]
execute as @s store result storage dawn:arrow_motion_0 Motion[0] double 10.0 run data get entity @s Motion[0]
execute as @s store result entity @s Motion[0] double 1.0 run data get storage dawn:arrow_motion_0 Motion[0] 1.0

execute as @s store result storage dawn:arrow_motion_1 Motion[1] double 10.0 run data get entity @s Motion[1]
execute as @s store result entity @s Motion[1] double 1.0 run data get storage dawn:arrow_motion_1 Motion[1] 1.0

execute as @s store result storage dawn:arrow_motion_2 Motion[2] double 10.0 run data get entity @s Motion[2]
execute as @s store result entity @s Motion[2] double 1.0 run data get storage dawn:arrow_motion_2 Motion[2] 1.0

scoreboard players set @s dawnArrowBoosted 1
say 1