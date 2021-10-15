data modify entity @s damage set value 300
data modify entity @s PierceLevel set value 5

data modify storage dawn:arrow_speed_x Motion[1] set from entity @s Motion[1]
execute store success storage dawn:arrow_speed_x Motion[1] double 20 run data modify entity @s Motion[1] set from storage dawn:arrow_speed_x
data modify storage dawn:arrow_speed_y Motion[2] set from entity @s Motion[2]
execute store success storage dawn:arrow_speed_y Motion[2] double 20 run data modify entity @s Motion[2] set from storage dawn:arrow_speed_y
data modify storage dawn:arrow_speed_z Motion[3] set from entity @s Motion[3]
execute store success storage dawn:arrow_speed_z Motion[3] double 20 run data modify entity @s Motion[3] set from storage dawn:arrow_speed_z

# execute store result entity @s Motion[1] double 50.0 run data modify entity @s Motion[1] set from storage dawn:arrow_speed_x
# execute store result entity @s Motion[2] double 50.0 run data modify entity @s Motion[2] set from storage dawn:arrow_speed_y
# execute store result entity @s Motion[3] double 50.0 run data modify entity @s Motion[3] set from storage dawn:arrow_speed_z

say www