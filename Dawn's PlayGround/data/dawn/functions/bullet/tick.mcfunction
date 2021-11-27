# 清除落地的子弹
kill @e[tag=bullet,nbt={inGround:true}]
# 更改子弹属性
execute as @s[nbt={Color:0},nbt={ShotFromCrossbow:true}] run function dawn:bullet/test
execute as @s[nbt={Color:1},nbt={ShotFromCrossbow:true}] run function dawn:bullet/_45_acp
execute as @s[nbt={Color:2},nbt={ShotFromCrossbow:true}] run function dawn:bullet/_50_russian
execute as @s[nbt={Color:3},nbt={ShotFromCrossbow:true}] run function dawn:bullet/m193
execute as @s[nbt={Color:4},nbt={ShotFromCrossbow:true}] run function dawn:bullet/ss90
execute as @s[nbt={Color:5},nbt={ShotFromCrossbow:true}] run function dawn:bullet/_452_magnum