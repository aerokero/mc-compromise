# Drain the bar toward 4.5 points (9 half-icons). This leaves food usable at
# all times without relying on player-NBT writes, which are blocked here.
execute as @a run effect clear @s minecraft:hunger
execute as @a[scores={hungerLevel=10..}] run effect give @s minecraft:hunger 1 40 true
