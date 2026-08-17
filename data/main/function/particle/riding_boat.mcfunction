execute at @a[scores={boating=12..}] run execute as @p on vehicle run execute if entity @p if block ~ ~-.1 ~ water run execute at @n[type=#minecraft:boat] run particle minecraft:splash ^0.75 ^.5 ^1 .1 .1 .1 1 3
execute at @a[scores={boating=12..}] run execute as @p on vehicle run execute if entity @p if block ~ ~-.1 ~ water run execute at @n[type=#minecraft:boat] run particle minecraft:splash ^-0.75 ^.5 ^1 .1 .1 .1 1 3
execute at @a[scores={boating=12..}] run execute as @p on vehicle run execute if entity @p if block ~ ~-.1 ~ water run execute at @n[type=#minecraft:boat] run particle minecraft:splash ^ ^.5 ^-1.1 .25 .1 .25 1 10
execute at @a[scores={boating=12..}] run execute as @p on vehicle run execute if entity @p if block ~ ~-.1 ~ water run execute at @n[type=#minecraft:boat] run particle minecraft:sulfur_bubbles ^-0.75 ^.5 ^-1 .1 .1 .1 0 3
execute at @a[scores={boating=12..}] run execute as @p on vehicle run execute if entity @p if block ~ ~-.1 ~ water run execute at @n[type=#minecraft:boat] run particle minecraft:sulfur_bubbles ^0.75 ^.5 ^-1 .1 .1 .1 0 3
execute at @a[scores={boating=1..}] run execute as @p on vehicle run execute if entity @p if block ~ ~-.1 ~ water run execute at @n[type=#minecraft:boat] run particle minecraft:splash ^0.75 ^.1 ^1 .1 .1 .1 0.1 1
execute at @a[scores={boating=1..}] run execute as @p on vehicle run execute if entity @p if block ~ ~-.1 ~ water run execute at @n[type=#minecraft:boat] run particle minecraft:splash ^-0.75 ^.1 ^1 .1 .1 .1 0.1 1
# execute unless entity @p[nbt={RootVehicle:{Entity:{id:"minecraft:pale_oak_boat"}}}] run say on
# execute unless entity @p[nbt={RootVehicle:{Entity:{id:"minecraft:pale_oak_boat"}}}] run say off
# execute unless entity @p[nbt={RootVehicle:{Entity:{id:"minecraft:pale_oak_boat"}}}] run advancement revoke @p only main:particle/riding_boat
execute as @a[scores={boating=1..}] run scoreboard players set @a boating 0
# execute if entity @p[nbt={RootVehicle:{Entity:{id:"minecraft:pale_oak_boat"}}}] run execute as @p[scores={boating=1..}] on vehicle run schedule function main:particle/riding_boat 3t