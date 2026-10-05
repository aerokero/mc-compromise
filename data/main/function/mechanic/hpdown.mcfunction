execute at @a[scores={deaths=1..,Hearts=12..}] run scoreboard players remove @p Hearts 2
#execute at @a[scores={deaths=1..}] run tag @p add AddingHearts
execute at @a[scores={deaths=1..,Hearts=10..}] run function main:mechanic/set_max_hp
execute at @a[scores={deaths=1..}] run scoreboard players set @p yellowHearts 0
execute as @a[scores={deaths=1..}] at @s run effect clear @s minecraft:absorption
execute at @a[scores={deaths=1..}] run scoreboard players set @p deaths 0