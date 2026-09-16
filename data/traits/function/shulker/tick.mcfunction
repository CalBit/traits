# Give effects
effect give @s minecraft:fire_resistance infinite 0 true

# Clear effects
effect clear @s minecraft:levitation

# Apply damage
execute if predicate traits:in_water run damage @s 1 minecraft:drown

# Give player ability item if offhand is not occupied
execute unless data entity @s equipment.offhand run item replace entity @s weapon.offhand with minecraft:snowball[minecraft:custom_data={ability:true,projectile:shulker},minecraft:enchantments={vanishing_curse:1},minecraft:tooltip_display={hidden_components:['minecraft:enchantments']},minecraft:enchantment_glint_override=false,minecraft:use_cooldown={seconds:2,cooldown_group:'traits:shulker_ability'},minecraft:item_model='minecraft:conduit',minecraft:custom_name='Shulker Bullet',minecraft:lore=['Shoot infinite Shulker Bullets'],minecraft:rarity=epic] 1
