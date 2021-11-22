# 一、计分板
# 1.潜行时间
scoreboard objectives add dawnSnkTim minecraft.custom:minecraft.sneak_time
# 2.物品使用
scoreboard objectives add golden_sword minecraft.used:minecraft.golden_sword
scoreboard objectives add netherite_sword minecraft.used:minecraft.netherite_sword
scoreboard objectives add iron_sword minecraft.used:minecraft.iron_sword
scoreboard objectives add crossbow minecraft.used:minecraft.crossbow
# 3.技能持续时间
scoreboard objectives add dawnSkillTim dummy
# 4.眩晕时间
scoreboard objectives add dawnFaint dummy
# 5.装备技能持续时间（防止与手持武器冲突）
scoreboard objectives add dawnEqpSklTim dummy
# 6.生物是否已被加强
scoreboard objectives add dawnMobStreng dummy
# 7.临时用计分板
scoreboard objectives add dawnTemper dummy
# 8.死亡倒计时
scoreboard objectives add DeathCountDown dummy
# 9.用于显示长时间特效的计分板
scoreboard objectives add dawnParticle dummy
# 10.攻击判定用计分板
scoreboard objectives add HurtByTimestamp dummy
# 11.用于箭矢加速的计分板
scoreboard objectives add dawnArrowBoosted dummy
# 12.技力
scoreboard objectives add dawnSkillPoint dummy
# 13.连续潜行时间
scoreboard objectives add dawnKeepSnkTim minecraft.custom:minecraft.sneak_time
# 14.是否在潜行
scoreboard objectives add dawnIsSnking minecraft.custom:minecraft.sneak_time

# 二、函数周期执行用计分板
# 1.两刻一次
scoreboard objectives add dawnTwoTick dummy

# 三、初始化计分板
schedule function dawn:scoreboard_init 5s

# 四、通用伤害系统
function ud:load
function udib:load
# 五、高亮显示
function waila:load

# 六、最多函数
gamerule maxCommandChainLength 200000

# 七、枪械子弹和上弹延迟
# 1.俄罗斯亲卫兵
scoreboard objectives add dawnAmmoDzn34 dummy
scoreboard objectives add dawnDelayDzn34 dummy
# 2.P90
scoreboard objectives add dawnAmmoP90 dummy
scoreboard objectives add dawnDelayP90 dummy