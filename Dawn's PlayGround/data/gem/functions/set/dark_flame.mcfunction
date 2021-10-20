execute as @e[type=item,limit=1,distance=..6] run data modify entity @s Item.tag.Tags append value "dark_flame"
execute as @s unless data entity @s SelectedItem.tag.Tags run data modify entity @s SelectedItem.tag.Tags set value ["dark_flame"]
execute as @a[nbt={SelectedItem:{tag:{Tags:["dark_flame"]}}}] run say 1