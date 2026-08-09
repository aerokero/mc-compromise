# short_grass, tall_grass, fern, large_fern, dead_bush, seagrass and tall_seagrass all have
# 0 hardness, so vanilla never runs the tool-damage code on them no matter what's in hand -
# that's why hoes lose no durability breaking them. Each hw_<block> objective mirrors the
# player's real minecraft.mined stat for that block, so it jumps from 0 as soon as they
# break one. We catch that, hand off to dispatch.mcfunction (which no-ops unless a hoe is
# actually in the mainhand) and reset the stat back to 0 so the same break isn't reprocessed
# next tick. Note: this also zeroes that block's counter on the vanilla Statistics screen.
execute as @a[scores={hw_short_grass=1..}] run function main:mechanic/hoe_wear/dispatch
scoreboard players set @a[scores={hw_short_grass=1..}] hw_short_grass 0

execute as @a[scores={hw_tall_grass=1..}] run function main:mechanic/hoe_wear/dispatch
scoreboard players set @a[scores={hw_tall_grass=1..}] hw_tall_grass 0

execute as @a[scores={hw_fern=1..}] run function main:mechanic/hoe_wear/dispatch
scoreboard players set @a[scores={hw_fern=1..}] hw_fern 0

execute as @a[scores={hw_large_fern=1..}] run function main:mechanic/hoe_wear/dispatch
scoreboard players set @a[scores={hw_large_fern=1..}] hw_large_fern 0

execute as @a[scores={hw_dead_bush=1..}] run function main:mechanic/hoe_wear/dispatch
scoreboard players set @a[scores={hw_dead_bush=1..}] hw_dead_bush 0

execute as @a[scores={hw_seagrass=1..}] run function main:mechanic/hoe_wear/dispatch
scoreboard players set @a[scores={hw_seagrass=1..}] hw_seagrass 0

execute as @a[scores={hw_tall_seagrass=1..}] run function main:mechanic/hoe_wear/dispatch
scoreboard players set @a[scores={hw_tall_seagrass=1..}] hw_tall_seagrass 0
