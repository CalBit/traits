# Replace empty bucket with milk bucket
execute if predicate traits:holding_bucket_in_offhand run playsound minecraft:item.bucket.fill player @a ~ ~ ~
execute if predicate traits:holding_bucket_in_offhand run item replace entity @s weapon.offhand with minecraft:milk_bucket

# Apply attributes when hand is empty
execute unless data entity @s SelectedItem run attribute @s minecraft:attack_knockback base set 1

# Remove attributes when hand is full
execute if data entity @s SelectedItem run attribute @s minecraft:attack_knockback base reset
