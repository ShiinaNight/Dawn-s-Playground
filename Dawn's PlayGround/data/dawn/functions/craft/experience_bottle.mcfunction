advancement revoke @s only dawn:craft/experience_bottle
recipe take @s dawn:experience_bottle

clear @s knowledge_book 1

execute as @s[level=2..] run function dawn:craft/experience_bottle_give
execute as @s[level=..1] run give @s glass_bottle