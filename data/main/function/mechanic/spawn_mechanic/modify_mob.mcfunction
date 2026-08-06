#No Armour & Weapon Drops
execute as @s run data merge entity @n[type=#main:mundane_hostiles] {drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f}}
execute as @s run data merge entity @n[type=minecraft:zombified_piglin] {drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f}}
execute as @s run data merge entity @n[type=minecraft:piglin] {drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f}}
#Weak Skeletons
execute as @s[type=#minecraft:skeletons] run attribute @s minecraft:max_health base set 10
#Weak Creepers
execute as @s[type=minecraft:creeper] run attribute @s minecraft:max_health base set 16
#Weak but Fast Cavespiders
execute as @s[type=minecraft:cave_spider] run attribute @s minecraft:max_health base set 4
execute as @s[type=minecraft:cave_spider] run attribute @s minecraft:movement_speed base set 0.4
#Fast Zombies (Only regular zombies)
execute as @s[type=minecraft:zombie,nbt={IsBaby:0b}] run attribute @s minecraft:movement_speed base set 0.4
execute as @s[type=#minecraft:zombies,nbt={IsBaby:0b}] run attribute @s minecraft:step_height base set 1
#Strong and Slow Husks
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:movement_speed base set 0.28
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:attack_damage base set 7