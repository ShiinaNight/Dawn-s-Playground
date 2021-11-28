setblock ~ ~2.1 ~ air destroy
summon arrow ~ ~2.1 ~ {Motion:[0.0,-5.0,0.0],ShotFromCrossbow:true,CustomName:'{"text": "南极"}',CustomNameVisible:false,damage:1024,Tags:["bullet"]}
# 射击之后需要5秒换弹
scoreboard players set south_pole SPReloading 100