# 一、计分板
# 1.潜行时间
scoreboard objectives add dawnSnkTim minecraft.custom:minecraft.sneak_time
# 2.物品使用
scoreboard objectives add golden_sword minecraft.used:minecraft.golden_sword
# 3.技能持续时间
scoreboard objectives add dawnSkillTim dummy
# 4.眩晕时间
scoreboard objectives add dawnFaint dummy
# 5.装备技能持续时间（防止与手持武器冲突）
scoreboard objectives add dawnEqpSklTim dummy
# 6.生物是否已被加强
scoreboard objectives add dawnMobStreng dummy

# 二、函数周期执行用计分板
# 1.两刻一次
scoreboard objectives add dawnTwoTick dummy

# 三、初始化计分板
schedule function dawn:scoreboard_init 5s