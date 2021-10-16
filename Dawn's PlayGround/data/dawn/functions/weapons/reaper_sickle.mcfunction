execute as @s[scores={netherite_sword=1..}] at @s run function dawn:particles/reaper_sickle
execute at @s run execute as @e[nbt={HurtTime:1s},distance=0.01..6] run function dawn:skills/reaper_sickle