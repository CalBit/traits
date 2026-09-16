# Clear effects
effect clear @s minecraft:poison
effect clear @s minecraft:regeneration

# Apply damage
execute if predicate traits:in_sunlight run damage @s 1 minecraft:on_fire

# Give player ability item if offhand is not occupied
execute unless data entity @s equipment.offhand run item replace entity @s weapon.offhand with minecraft:rotten_flesh[minecraft:custom_data={ability:true},minecraft:enchantments={vanishing_curse:1},minecraft:tooltip_display={hidden_components:['minecraft:enchantments']},minecraft:enchantment_glint_override=false,minecraft:item_model='minecraft:zombie_spawn_egg',minecraft:custom_name='Summon',minecraft:lore=['Summon 3 zombies around yourself'],minecraft:consumable={consume_seconds:0,sound:'entity.zombie.ambient',on_consume_effects:[]},minecraft:food={nutrition:0,saturation:0,can_always_eat:1},minecraft:use_cooldown={seconds:60,cooldown_group:'traits:zombie_ability'},minecraft:rarity=epic] 1
