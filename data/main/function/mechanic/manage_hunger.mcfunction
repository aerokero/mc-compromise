# Maintain hunger bar at strictly 9 half-icons (4.5 drumsticks) so food is always consumable
execute as @a[scores={hungerLevel=..8}] run effect give @s minecraft:saturation 1 0 true
execute as @a[scores={hungerLevel=9..}] run effect clear @s minecraft:saturation

execute as @a[scores={hungerLevel=10..}] run effect give @s minecraft:hunger 1 40 true
execute as @a[scores={hungerLevel=..9}] run effect clear @s minecraft:hunger

