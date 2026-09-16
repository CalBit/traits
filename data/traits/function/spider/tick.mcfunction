# Clear effects
effect clear @s minecraft:poison
execute if predicate traits:has_levitation_3 run effect clear @s minecraft:levitation

# "Climb" up blocks if sneaking
execute if predicate traits:is_pressing_jump at @s anchored feet unless block ~-0.4 ~ ~ #minecraft:air unless predicate traits:has_levitation_1 unless predicate traits:in_scaffolding run effect give @s minecraft:levitation 1 2 true
execute if predicate traits:is_pressing_jump at @s anchored feet unless block ~0.4 ~ ~ #minecraft:air unless predicate traits:has_levitation_1 unless predicate traits:in_scaffolding run effect give @s minecraft:levitation 1 2 true
execute if predicate traits:is_pressing_jump at @s anchored feet unless block ~ ~ ~-0.4 #minecraft:air unless predicate traits:has_levitation_1 unless predicate traits:in_scaffolding run effect give @s minecraft:levitation 1 2 true
execute if predicate traits:is_pressing_jump at @s anchored feet unless block ~ ~ ~0.4 #minecraft:air unless predicate traits:has_levitation_1 unless predicate traits:in_scaffolding run effect give @s minecraft:levitation 1 2 true
