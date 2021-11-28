execute as @s[predicate=dawn:rune_bag/fire_immunity] run function dawn:rune_bag/fire_immunity
execute as @s[predicate=dawn:rune_bag/breathless] run function dawn:rune_bag/breathless
execute as @s[predicate=dawn:rune_bag/permanent_shield,predicate=!dawn:effect/absorption] run function dawn:rune_bag/permanent_shield
execute as @s[predicate=dawn:rune_bag/extra_health] run function dawn:rune_bag/extra_health
execute as @s[predicate=!dawn:rune_bag/extra_health] run function dawn:rune_bag/extra_health_remove
execute as @s[predicate=dawn:rune_bag/curse_of_undying] run function dawn:rune_bag/curse_of_undying
execute as @s[predicate=dawn:rune_bag/arena_emblem,scores={dawnLastDeath=1}] run function dawn:rune_bag/arena_emblem
