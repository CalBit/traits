$execute as @e[type=camel,nbt={last_hurt_by_player:$(UUID)}] at @s run summon minecraft:camel_husk ^ ^ ^ {Tags:[copy_nbt]}
$execute as @e[type=camel,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] equipment set from entity @s equipment
$execute as @e[type=camel,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Owner set from entity @s Owner
$execute as @e[type=camel,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Tame set from entity @s Tame
$execute as @e[type=camel,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Age set from entity @s Age
$execute as @e[type=camel,nbt={last_hurt_by_player:$(UUID)}] run tp @s ~ -500 ~

$execute as @e[type=horse,nbt={last_hurt_by_player:$(UUID)}] at @s run summon minecraft:zombie_horse ^ ^ ^ {Tags:[copy_nbt]}
$execute as @e[type=horse,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] equipment set from entity @s equipment
$execute as @e[type=horse,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] attributes set from entity @s attributes
$execute as @e[type=horse,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Owner set from entity @s Owner
$execute as @e[type=horse,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Tame set from entity @s Tame
$execute as @e[type=horse,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Age set from entity @s Age
$execute as @e[type=horse,nbt={last_hurt_by_player:$(UUID)}] run tp @s ~ -500 ~

$execute as @e[type=nautilus,nbt={last_hurt_by_player:$(UUID)}] at @s run summon minecraft:zombie_nautilus ^ ^ ^ {Tags:[copy_nbt]}
$execute as @e[type=nautilus,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] equipment set from entity @s equipment
$execute as @e[type=nautilus,nbt={last_hurt_by_player:$(UUID)}] run tp @s ~ -500 ~

$execute as @e[type=piglin,nbt={last_hurt_by_player:$(UUID)}] at @s run summon minecraft:zombified_piglin ^ ^ ^ {Tags:[copy_nbt]}
$execute as @e[type=piglin,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] equipment set from entity @s equipment
$execute as @e[type=piglin,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] IsBaby set from entity @s IsBaby
$execute as @e[type=piglin,nbt={last_hurt_by_player:$(UUID)}] run tp @s ~ -500 ~

$execute as @e[type=piglin_brute,nbt={last_hurt_by_player:$(UUID)}] at @s run summon minecraft:zombified_piglin ^ ^ ^ {Tags:[copy_nbt],IsBaby:false}
$execute as @e[type=piglin_brute,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] equipment set from entity @s equipment
$execute as @e[type=piglin_brute,nbt={last_hurt_by_player:$(UUID)}] run tp @s ~ -500 ~

$execute as @e[type=hoglin,nbt={last_hurt_by_player:$(UUID)}] at @s run summon minecraft:zoglin ^ ^ ^ {Tags:[copy_nbt]}
$execute as @e[type=hoglin,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] equipment set from entity @s equipment
$execute as @e[type=hoglin,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] IsBaby set from entity @s IsBaby
$execute as @e[type=hoglin,nbt={last_hurt_by_player:$(UUID)}] run tp @s ~ -500 ~

$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] at @s run summon minecraft:zombie_villager ^ ^ ^ {Tags:[copy_nbt]}
$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] equipment set from entity @s equipment
$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Brain set from entity @s Brain
$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Inventory set from entity @s Inventory
$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Offers set from entity @s Offers
$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] VillagerData set from entity @s VillagerData
$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] at @s run data modify entity @e[tag=copy_nbt,limit=1] Xp set from entity @s Xp
$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] at @s if predicate traits:is_baby run data modify entity @e[tag=copy_nbt,limit=1] IsBaby set value true
$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] at @s unless predicate traits:is_baby run data modify entity @e[tag=copy_nbt,limit=1] IsBaby set value false
$execute as @e[type=villager,nbt={last_hurt_by_player:$(UUID)}] run tp @s ~ -500 ~

execute as @e[tag=copy_nbt] run effect give @s minecraft:nausea 10
execute as @e[tag=copy_nbt] run tag @s remove copy_nbt

$execute as @e[nbt={last_hurt_by_player:$(UUID)}] run effect give @s minecraft:poison 10
# Clear last_hurt_by_player_memory_time so that the mob won't get re-poisoned if another mob is hit within the 5 second window
$execute as @e[nbt={last_hurt_by_player:$(UUID)}] run data modify entity @s last_hurt_by_player_memory_time set value 0
