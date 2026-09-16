# Apply damage
execute at @s if predicate traits:in_sunlight run damage @s 1 minecraft:on_fire
execute at @s if predicate traits:in_hot_biome run damage @s 1 minecraft:on_fire
execute at @s if predicate traits:in_water run damage @s 1 minecraft:drown

# Give player ability item if offhand is not occupied
execute unless data entity @s equipment.offhand run item replace entity @s weapon.offhand with minecraft:snowball[minecraft:custom_data={ability:true},minecraft:enchantments={vanishing_curse:1},minecraft:tooltip_display={hidden_components:['minecraft:enchantments']},minecraft:enchantment_glint_override=false,minecraft:use_cooldown={seconds:0.5,cooldown_group:'traits:snow_golem_ability'},minecraft:custom_name='Snowball',minecraft:lore=['Throw infinite Snowballs'],minecraft:rarity=epic] 1

# Spread snow
execute at @s[nbt={OnGround:true}] unless predicate traits:in_hot_biome anchored feet if block ~ ~ ~ #minecraft:air if block ~ ~-0.5 ~ #traits:snow_golem_spread run setblock ~ ~ ~ minecraft:snow
