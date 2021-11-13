execute store result score @s dmgt_a run data get entity @s Health
scoreboard players operation @s dmgt_b -= @s dmgt_a
scoreboard players operation @s dmgt_b *= @s mobHP_C_a
scoreboard players operation @s uh_counts += @s dmgt_b
scoreboard players operation @s uh_counts /= @s mob_maxHP
execute store result score @s dmgt_b run data get entity @s Health
