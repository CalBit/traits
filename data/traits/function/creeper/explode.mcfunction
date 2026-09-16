# Revoke advancement
advancement revoke @s only traits:creeper/detonate

# If dead, don't continue
execute as @s[nbt=!{DeathTime:0s}] run return fail

# Summon tnt for explosion
function traits:creeper/summon_tnt with entity @s

# Tag player and schedule death
tag @s add creeper_exploded
schedule function traits:creeper/ensure_death 0.1s
