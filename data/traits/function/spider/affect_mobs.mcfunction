$execute as @e[nbt={last_hurt_by_player:$(UUID)}] run effect give @s minecraft:poison 10
# Clear last_hurt_by_player_memory_time so that the mob won't get re-poisoned if another mob is hit within the 5 second window
$execute as @e[nbt={last_hurt_by_player:$(UUID)}] run data modify entity @s last_hurt_by_player_memory_time set value 0
