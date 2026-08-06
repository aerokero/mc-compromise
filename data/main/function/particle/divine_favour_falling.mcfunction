execute at @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] run data merge entity @n[type=item,nbt={Item:{id:"minecraft:nether_star"}}] {NoGravity:1b,Item:{id:"minecraft:nether_star"}}
execute at @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}}] run data merge entity @n[type=item,nbt={Item:{id:"minecraft:ender_eye"}}] {NoGravity:1b,Item:{id:"minecraft:ender_eye"}}
execute if stopwatch 0.5s 0.5.. run execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:nether_star"}}] run particle minecraft:end_rod ~ ~.4 ~ 0 0 0 .05 1 force
execute if stopwatch 0.5s 0.5.. run execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:nether_star"}}] run particle minecraft:electric_spark ~ ~.4 ~ .15 .15 .15 0 1 force
execute if stopwatch 0.5s 0.5.. run execute at @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}}] run particle minecraft:electric_spark ~ ~.4 ~ .1 .1 .1 0 1 normal
execute if stopwatch 0.5s 0.5.. run execute at @e[type=item,nbt={Item:{components:{"minecraft:item_model":"minecraft:heart_container"}}}] run particle minecraft:electric_spark ~ ~.4 ~ .1 .1 .1 0 1 normal
execute if stopwatch 0.5s 0.5.. run execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:ender_eye"}}] run particle minecraft:portal ~ ~.3 ~ .1 .1 .1 0.5 1 normal
execute if stopwatch 3s 3.. run execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:nether_star"}}] run particle flash{color:[1.000,1.00,1.000,1.00]} ~ ~.4 ~ 0 0 0 0 0 normal
#execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:nether_star"}}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace light
#execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:nether_star"}}] run setblock ~ ~ ~ minecraft:light keep
#How would I detect a player pickup, a despawn, anythign not a player picking it up? It can't remove the light after its gone. The only thing I can think of is a =n addiitonal entity that spawns with it, but that sounds like a lot and idk if thats worth it
execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:nether_star"}}] run execute if block ~ ~-3 ~ air run data merge entity @n[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:nether_star"}}] {Motion:[0.0,-0.05,0.0]}
execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:nether_star"}}] run execute unless block ~ ~-1 ~ air run data merge entity @n[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:nether_star"}}] {Motion:[0.0,0.025,0.0]}
execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:ender_eye"}}] run execute if block ~ ~-3 ~ air run data merge entity @n[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:ender_eye"}}] {Motion:[0.0,-0.1,0.0]}
execute at @e[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:ender_eye"}}] run execute unless block ~ ~-0.5 ~ air run data merge entity @n[type=item,nbt={NoGravity:1b,Item:{id:"minecraft:ender_eye"}}] {Motion:[0.0,0.025,0.0]}
