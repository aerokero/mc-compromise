# Checks if a mob spawn is exposed to the sky OR if it is above sea level. So NO mobs will spawn above sea level, or if exposed to the sky.
execute at @s run execute if dimension minecraft:overworld run execute if predicate main:surface_spawn run tag @s add SpawnForbidden
execute as @s[tag=SpawnForbidden] run tp @s ~ ~-10000 ~
execute as @s run execute if entity @s[tag=!SpawnForbidden] run function main:mechanic/spawn_mechanic/modify_mob
tag @s add SpawnChecked