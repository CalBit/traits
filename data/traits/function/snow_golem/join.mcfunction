function traits:traits/join {team:snow_golem}

# Apply attributes
attribute @s minecraft:fall_damage_multiplier base set 0

# Give carved pumpkin
execute if data entity @s equipment.head run give @s minecraft:carved_pumpkin
execute unless data entity @s equipment.head run item replace entity @s armor.head with minecraft:carved_pumpkin
