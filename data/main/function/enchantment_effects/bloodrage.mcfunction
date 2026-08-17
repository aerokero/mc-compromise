execute at @s run execute if entity @p[scores={HealthPoints=..10}] run title @p actionbar {"text":"Bloodrage","bold":false,"color":"red"}
execute at @a run execute if entity @p[scores={HealthPoints=..10}] run effect give @p minecraft:resistance 1 1 true
execute at @a run execute if entity @p[scores={HealthPoints=..10}] run effect give @p minecraft:strength 1 0 true
execute at @a run execute if entity @p[scores={HealthPoints=..10}] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1.5 ~ .25 .25 .25 .1 1 normal