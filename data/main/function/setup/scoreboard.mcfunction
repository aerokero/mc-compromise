scoreboard objectives add sneaking minecraft.custom:minecraft.sneak_time
scoreboard players add @a sneaking 0
scoreboard players set 0 sneaking 0
scoreboard players set 5 sneaking 5
scoreboard players set 10 sneaking 10
scoreboard players set 15 sneaking 15
scoreboard players set 20 sneaking 20
scoreboard players set 25 sneaking 25
scoreboard players set 30 sneaking 30
scoreboard players set 35 sneaking 35
scoreboard players set 40 sneaking 40
scoreboard players set 45 sneaking 45

scoreboard objectives add Hunger food

scoreboard objectives add HealthPoints health
scoreboard objectives add deaths deathCount
scoreboard objectives add Hearts dummy
scoreboard players add @a Hearts 0
execute at @a[scores={Hearts=..20}] run scoreboard players set @p Hearts 20


scoreboard players set 1 sleepTimerScore 1
scoreboard players set 100 sleepTimerScore 100
scoreboard objectives add sleepTimerScore dummy

scoreboard objectives add divinity dummy
scoreboard players set 0 divinity 0
scoreboard objectives add apotropaic dummy
scoreboard players set 0 apotropaic 0

stopwatch create divinity30s
stopwatch create divinity15s
stopwatch create 3s
stopwatch create 2s
stopwatch create 1s
stopwatch create 0.5s
stopwatch create eerie

scoreboard objectives add eerie dummy
scoreboard players set 1 eerie 1

scoreboard objectives add boating minecraft.custom:minecraft.boat_one_cm

scoreboard objectives add anvil_interaction minecraft.custom:minecraft.interact_with_anvil
scoreboard players set 1 anvil_interaction 1

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z1 dummy
scoreboard objectives add motion_z2 dummy

# Hoe durability on instant-break plants (short_grass, tall_grass, fern, large_fern,
# dead_bush, seagrass, tall_seagrass never damage tools in vanilla because these
# blocks have 0 hardness). These stat-linked objectives detect the break and are
# reset to 0 every tick by main:mechanic/hoe_wear/tick once handled.
scoreboard objectives add hw_short_grass minecraft.mined:minecraft.short_grass
scoreboard objectives add hw_tall_grass minecraft.mined:minecraft.tall_grass
scoreboard objectives add hw_fern minecraft.mined:minecraft.fern
scoreboard objectives add hw_large_fern minecraft.mined:minecraft.large_fern
scoreboard objectives add hw_dead_bush minecraft.mined:minecraft.dead_bush
scoreboard objectives add hw_seagrass minecraft.mined:minecraft.seagrass
scoreboard objectives add hw_tall_seagrass minecraft.mined:minecraft.tall_seagrass
scoreboard objectives add hw_roll dummy