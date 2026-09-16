# Give effects
effect give @s minecraft:night_vision infinite 0 true

# Clear effects
effect clear @s minecraft:poison
effect clear @s minecraft:regeneration

# Apply damage
execute if predicate traits:in_sunlight run damage @s 1 minecraft:on_fire

# Give player ability item if chest slot is not occupied
execute unless data entity @s equipment.chest run item replace entity @s armor.chest with minecraft:phantom_membrane[minecraft:custom_data={ability:true},minecraft:enchantments={vanishing_curse:1,binding_curse:1},minecraft:tooltip_display={hidden_components:['minecraft:enchantments']},minecraft:enchantment_glint_override=false,minecraft:equippable={slot:chest},minecraft:glider={},minecraft:item_name='Phantom Wings',minecraft:lore=['Allows you to glide'],minecraft:rarity=epic]
