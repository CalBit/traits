# Clear effects
effect clear @s minecraft:poison
effect clear @s minecraft:regeneration

# Apply damage
execute at @s if predicate traits:in_sunlight run damage @s 1 minecraft:on_fire

# Give player ability item if offhand is not occupied
execute unless data entity @s equipment.offhand run item replace entity @s weapon.offhand with minecraft:arrow[minecraft:custom_data={ability:true},minecraft:enchantments={vanishing_curse:1},minecraft:tooltip_display={hidden_components:['minecraft:enchantments']},minecraft:enchantment_glint_override=false,minecraft:intangible_projectile={},minecraft:custom_name='Skeleton Arrow',minecraft:lore=['Shoot infinite Arrows'],minecraft:rarity=epic] 1
