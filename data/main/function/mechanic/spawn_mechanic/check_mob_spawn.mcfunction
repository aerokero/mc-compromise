# Checks if a mob spawn is exposed to the sky. This stops all NON-un-dead mobs from spawning on open fields. 
execute at @s run execute if dimension minecraft:overworld run execute unless entity @s[type=#minecraft:undead] if predicate main:sky_spawn run tag @s add SpawnForbidden
execute as @s[tag=SpawnForbidden] run tp @s ~ ~-10000 ~
execute as @s run execute if entity @s[tag=!SpawnForbidden] run function main:mechanic/spawn_mechanic/modify_mob
tag @s add SpawnChecked