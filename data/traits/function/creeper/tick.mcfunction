# Give effects
effect give @s minecraft:night_vision infinite 0 true

# Give player ability item if offhand is not occupied
execute unless data entity @s equipment.offhand run item replace entity @s weapon.offhand with minecraft:gunpowder[minecraft:custom_data={ability:true},minecraft:enchantments={vanishing_curse:1},minecraft:tooltip_display={hidden_components:['minecraft:enchantments']},minecraft:enchantment_glint_override=false,minecraft:consumable={consume_seconds:2,sound:entity.creeper.hurt,has_consume_particles:false},minecraft:food={nutrition:0,saturation:0,can_always_eat:1},minecraft:item_model='minecraft:tnt',minecraft:custom_name='Explode',minecraft:lore=['Are you sure you want to?'],minecraft:rarity=epic] 1
