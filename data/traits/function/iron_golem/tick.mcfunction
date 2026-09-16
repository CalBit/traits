# Apply attributes when hand is empty
execute unless data entity @s SelectedItem run attribute @s minecraft:attack_damage base set 10
execute unless data entity @s SelectedItem run attribute @s minecraft:attack_knockback base set 1
execute unless data entity @s SelectedItem run attribute @s minecraft:attack_speed base set 2

# Remove attributes when hand is full
execute if data entity @s SelectedItem run attribute @s minecraft:attack_damage base reset
execute if data entity @s SelectedItem run attribute @s minecraft:attack_knockback base reset
execute if data entity @s SelectedItem run attribute @s minecraft:attack_speed base reset
