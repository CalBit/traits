# Players without a team must choose a set of traits
execute as @a[team=] run function traits:traits/choose_traits_tick

# Remove ability from team player if offhand is occupied
execute as @a[team=!] unless predicate traits:holding_ability run function traits:traits/take_ability

################################################
# Execute role ticks and add entities to teams #
################################################
# Blaze
execute as @a[scores={traits=1}] at @s run function traits:blaze/join
execute as @e[type=blaze] run team join blaze
execute as @a[team=blaze] at @s run function traits:blaze/tick
# Replace fake snowball with real fireball
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:blaze}}}}] at @s run summon minecraft:small_fireball
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:blaze}}}}] at @s run data modify entity @e[type=minecraft:small_fireball,sort=nearest,limit=1] Owner set from entity @s Owner
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:blaze}}}}] at @s run data modify entity @e[type=minecraft:small_fireball,sort=nearest,limit=1] Motion[0] set from entity @s Motion[0]
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:blaze}}}}] at @s run data modify entity @e[type=minecraft:small_fireball,sort=nearest,limit=1] Motion[1] set from entity @s Motion[1]
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:blaze}}}}] at @s run data modify entity @e[type=minecraft:small_fireball,sort=nearest,limit=1] Motion[2] set from entity @s Motion[2]
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:blaze}}}}] at @s run kill @s

# Cow
execute as @a[scores={traits=2}] at @s run function traits:cow/join
execute as @e[type=cow] run team join cow
execute as @a[team=cow] at @s run function traits:cow/tick

# Creeper
execute as @a[scores={traits=3}] at @s run function traits:creeper/join
execute as @e[type=creeper] run team join creeper
execute as @a[team=creeper] at @s run function traits:creeper/tick

# Enderman
execute as @a[scores={traits=4}] at @s run function traits:enderman/join
execute as @e[type=enderman] run team join enderman
execute as @a[team=enderman] at @s run function traits:enderman/tick
# Kill all endermites
tp @e[type=minecraft:endermite] ~ -500 ~

# Human
execute as @a[scores={traits=5}] at @s run function traits:human/join
execute as @e[type=#traits:human] run team join human

# Iron Golem
execute as @a[scores={traits=6}] at @s run function traits:iron_golem/join
execute as @e[type=iron_golem] run team join iron_golem
execute as @a[team=iron_golem] at @s run function traits:iron_golem/tick

# Phantom
execute as @a[scores={traits=7}] at @s run function traits:phantom/join
execute as @e[type=phantom] run team join phantom
execute as @a[team=phantom] at @s run function traits:phantom/tick

# Shulker
execute as @a[scores={traits=8}] at @s run function traits:shulker/join
execute as @e[type=shulker] run team join shulker
execute as @a[team=shulker] at @s run function traits:shulker/tick
# Replace fake snowball with real shulker bullet
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:shulker}}}}] at @s run summon minecraft:shulker_bullet ~ ~-0.5 ~
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:shulker}}}}] at @s run data modify entity @e[type=minecraft:shulker_bullet,sort=nearest,limit=1] Owner set from entity @s Owner
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:shulker}}}}] at @s run data modify entity @e[type=minecraft:shulker_bullet,sort=nearest,limit=1] Target set from entity @e[type=#traits:shulker_target,distance=2..,sort=nearest,limit=1] UUID
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:shulker}}}}] at @s run data modify entity @e[type=minecraft:shulker_bullet,sort=nearest,limit=1] Steps set value 10
execute as @e[type=minecraft:snowball,nbt={Item:{components:{'minecraft:custom_data':{projectile:shulker}}}}] at @s run kill @s

# Skeleton
execute as @a[scores={traits=9}] at @s run function traits:skeleton/join
execute as @e[type=#traits:skeleton] run team join skeleton
execute as @a[team=skeleton] at @s run function traits:skeleton/tick

# Spider
execute as @a[scores={traits=10}] at @s run function traits:spider/join
execute as @e[type=#traits:spider] run team join spider
execute as @a[team=spider] at @s run function traits:spider/tick

# Snow Golem
execute as @a[scores={traits=11}] at @s run function traits:snow_golem/join
execute as @e[type=snow_golem] run team join snow_golem
execute as @a[team=snow_golem] at @s run function traits:snow_golem/tick

# Zombie
execute as @a[scores={traits=12}] at @s run function traits:zombie/join
execute as @e[type=#traits:zombie] run team join zombie
execute as @a[team=zombie] at @s run function traits:zombie/tick
