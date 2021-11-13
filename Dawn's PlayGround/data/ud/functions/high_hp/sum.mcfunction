execute as @e at @s store result score @s mob_maxHP run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
scoreboard players operation @s mobHP_C_a = @s mob_maxHP
scoreboard players operation @s mobHP_C_a -= #system HPbasic_LT
scoreboard players set @s mobHP_C_H 1

