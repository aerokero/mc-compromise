execute in minecraft:the_end run summon item 0 100 0 {Age:-32768,Item:{id:"minecraft:nether_star",count:1}}
tellraw @a {"text":"Evil has been banished from the surface.","color":"gray"}
scoreboard players set gamerule gamerule_safe_surface 1