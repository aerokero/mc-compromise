execute at @a[scores={deaths=1..,Hearts=22..}] run scoreboard players remove @p Hearts 2 
#execute at @a[scores={deaths=1..}] run tag @p add AddingHearts
execute at @a[scores={deaths=1..,Hearts=20..}] run function main:mechanic/set_max_hp
execute at @a[scores={deaths=1..}] run scoreboard players set @p deaths 0