execute as @s if score @s dawnUnDead matches 1 run effect give @s instant_health 1 4 true
execute as @s unless score @s dawnUnDead matches 1 run effect give @s instant_damage 1 4 true
scoreboard players reset @s[scores={dawnFlashTarget=1}] dawnFlashTarget
