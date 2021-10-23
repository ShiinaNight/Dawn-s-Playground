execute as @s[nbt={SelectedItem:{tag:{Tags:["fire_5"]}}},predicate=!dawn:mainhand/solar_sword] at @s run execute as @e[nbt={HurtTime:1s},nbt=!{HurtByTimestamp:0},distance=0.01..6] run function gem:fire/plus_5_attack

execute as @s[nbt={SelectedItem:{tag:{Tags:["fire_5"]}}},predicate=dawn:mainhand/solar_sword] at @s run execute as @e[nbt={HurtTime:1s},nbt=!{HurtByTimestamp:0},distance=0.01..6] run function gem:fire/plus_50_attack
