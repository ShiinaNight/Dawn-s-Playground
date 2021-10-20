# udibFireLvl持续减少
scoreboard players remove @e[scores={udibFireLvl=1..}] udibFireLvl 1
# 给叠了燃烧的实体加特效
execute as @e[scores={udibFireLvl=1..}] run data modify entity @s HasVisualFire set value true
execute as @e[scores={udibFireLvl=0},nbt={HasVisualFire:true}] run data modify entity @s HasVisualFire set value false