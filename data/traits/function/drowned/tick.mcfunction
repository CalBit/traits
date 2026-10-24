# Give effects
effect give @s minecraft:water_breathing infinite 0 true

# Give night vision if underwater
execute if predicate traits:in_water run effect give @s minecraft:night_vision infinite 0 true
execute unless predicate traits:in_water as @s[nbt={active_effects:[{duration:-1,id:'minecraft:night_vision'}]}] run effect clear @s minecraft:night_vision

# Clear effects
effect clear @s minecraft:poison
effect clear @s minecraft:regeneration

# Apply damage
execute if predicate traits:in_sunlight run damage @s 1 minecraft:on_fire

# Give player ability item if offhand is not occupied
execute unless data entity @s equipment.offhand run item replace entity @s weapon.offhand with minecraft:trident[minecraft:custom_data={ability:true},minecraft:enchantments={vanishing_curse:1},minecraft:tooltip_display={hidden_components:['minecraft:enchantments']},minecraft:enchantment_glint_override=false,minecraft:intangible_projectile={},minecraft:custom_name={translate:'traits.item.drowned.title',fallback:'Drowned Trident'},minecraft:lore=[{translate:'traits.item.drowned.description',fallback:'Throw infinite tridents'}],minecraft:use_cooldown={seconds:2,cooldown_group:'traits:drowned_ability'},minecraft:rarity=epic] 1
