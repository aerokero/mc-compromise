# Manual seed 173 coast probes. No teleporting, block writes or forceload.
execute if loaded 1473 62 -800 if block 1473 62 -800 minecraft:water run tellraw @s {"text":"[a04] 1473 62 -800: WATER","color":"green"}
execute if loaded 1473 62 -800 if block 1473 62 -800 minecraft:air run tellraw @s {"text":"[a04] 1473 62 -800: AIR - inspect surrounding shore","color":"red"}
execute if loaded 1473 62 -800 unless block 1473 62 -800 minecraft:air unless block 1473 62 -800 minecraft:water run tellraw @s {"text":"[a04] 1473 62 -800: other block (ice/terrain may be valid)","color":"yellow"}
execute unless loaded 1473 62 -800 run tellraw @s {"text":"[a04] 1473 62 -800: chunk not loaded","color":"gray"}
execute if loaded 1600 62 -850 if block 1600 62 -850 minecraft:water run tellraw @s {"text":"[a04] 1600 62 -850: WATER","color":"green"}
execute if loaded 1600 62 -850 if block 1600 62 -850 minecraft:air run tellraw @s {"text":"[a04] 1600 62 -850: AIR - inspect surrounding shore","color":"red"}
execute if loaded 1600 62 -850 unless block 1600 62 -850 minecraft:air unless block 1600 62 -850 minecraft:water run tellraw @s {"text":"[a04] 1600 62 -850: other block (ice/terrain may be valid)","color":"yellow"}
execute unless loaded 1600 62 -850 run tellraw @s {"text":"[a04] 1600 62 -850: chunk not loaded","color":"gray"}
execute if loaded 1536 62 -850 if block 1536 62 -850 minecraft:water run tellraw @s {"text":"[a04] 1536 62 -850: WATER","color":"green"}
execute if loaded 1536 62 -850 if block 1536 62 -850 minecraft:air run tellraw @s {"text":"[a04] 1536 62 -850: AIR - inspect surrounding shore","color":"red"}
execute if loaded 1536 62 -850 unless block 1536 62 -850 minecraft:air unless block 1536 62 -850 minecraft:water run tellraw @s {"text":"[a04] 1536 62 -850: other block (ice/terrain may be valid)","color":"yellow"}
execute unless loaded 1536 62 -850 run tellraw @s {"text":"[a04] 1536 62 -850: chunk not loaded","color":"gray"}
execute if loaded 1473 62 -600 if block 1473 62 -600 minecraft:water run tellraw @s {"text":"[a04] 1473 62 -600: WATER","color":"green"}
execute if loaded 1473 62 -600 if block 1473 62 -600 minecraft:air run tellraw @s {"text":"[a04] 1473 62 -600: AIR - inspect surrounding shore","color":"red"}
execute if loaded 1473 62 -600 unless block 1473 62 -600 minecraft:air unless block 1473 62 -600 minecraft:water run tellraw @s {"text":"[a04] 1473 62 -600: other block (ice/terrain may be valid)","color":"yellow"}
execute unless loaded 1473 62 -600 run tellraw @s {"text":"[a04] 1473 62 -600: chunk not loaded","color":"gray"}
