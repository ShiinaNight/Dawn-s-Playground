scoreboard players remove @s dawnSkillPoint 400
scoreboard players set @s skill_trigger 0
scoreboard players set @s dawnSkillTim 100
execute at @s anchored eyes positioned ^ ^ ^ run summon armor_stand ^ ^ ^7 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["judgement_cut","no_particle","dcd_5s"]}