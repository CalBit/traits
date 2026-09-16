# Apply damage
execute if predicate traits:in_water run damage @s 1 minecraft:drown

# Give player ability item if offhand is not occupied
execute unless data entity @s equipment.offhand run item replace entity @s weapon.offhand with minecraft:ender_pearl[minecraft:custom_data={ability:true},minecraft:enchantments={vanishing_curse:1},minecraft:tooltip_display={hidden_components:['minecraft:enchantments']},minecraft:enchantment_glint_override=false,minecraft:use_cooldown={seconds:3},minecraft:custom_name='Ender Pearl',minecraft:lore=['Throw infinite Ender Pearls'],minecraft:rarity=epic] 1
