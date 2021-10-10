# 武士刀 「正宗」
clear @s iron_sword{tag:{id:"dawn:katana",CustomModelData:12770002,display:{Name:'{"text":"武士刀 「正宗」"}'}}}
item replace entity @s weapon.mainhand with barrier{Tags:["clear"]}
clear @s barrier 1
loot give @s loot dawn:honjo_masamune