execute if entity @p if block ~ ~-.1 ~ water run execute as @p on vehicle run execute at @n[type=#minecraft:boat] run particle minecraft:splash ^0.75 ^.5 ^1 .1 .1 .1 1 5
execute if entity @p if block ~ ~-.1 ~ water run execute as @p on vehicle run execute at @n[type=#minecraft:boat] run particle minecraft:splash ^-0.75 ^.5 ^1 .1 .1 .1 1 5
execute if entity @p if block ~ ~-.1 ~ water run execute as @p on vehicle run execute at @n[type=#minecraft:boat] run particle minecraft:splash ^ ^.5 ^1 .1 .1 .1 1 5
advancement revoke @p only main:particle/boarding_boat