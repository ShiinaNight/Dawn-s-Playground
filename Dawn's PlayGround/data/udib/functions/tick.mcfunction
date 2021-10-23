# udibFireLvl持续减少
scoreboard players remove @e[scores={udibFireLvl=1..}] udibFireLvl 1
# udibThunderLvl持续减少
scoreboard players remove @e[scores={udibThunderLvl=1..}] udibThunderLvl 1
# 刷新属性
execute as @e unless entity @s[scores={udibFireLvl=0..}] run scoreboard players set @s udibFireLvl 0
execute as @e unless entity @s[scores={udibThunderLvl=0..}] run scoreboard players set @s udibThunderLvl 0
# 给叠了燃烧的实体加特效
execute as @e[scores={udibFireLvl=1..}] run data modify entity @s HasVisualFire set value true
execute as @e[scores={udibFireLvl=0},nbt={HasVisualFire:true}] run data modify entity @s HasVisualFire set value false