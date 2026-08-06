execute at @e[type=minecraft:armor_stand,tag=WardingStone] unless entity @e[distance=..16,type=#main:villager_friends,nbt={active_effects: [{id: "minecraft:regeneration"}]}] run effect give @e[type=#main:villager_friends,distance=..16] minecraft:regeneration 3 0 true
execute as @e[type=minecraft:armor_stand,tag=WardingStone] unless entity @s[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute at @s[type=minecraft:armor_stand,tag=WardingStone] run setblock ~ ~ ~ minecraft:lodestone
execute as @e[type=minecraft:armor_stand,tag=WardingStone] unless entity @s[type=minecraft:armor_stand,tag=WardingStoneSetup] run function main:mechanic/warding_stone_particles
function main:mechanic/warding_stone_effects
execute at @e[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute unless block ~ ~ ~ minecraft:lodestone run function main:mechanic/warding_stone_killer
# execute at @e[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute if entity @n if predicate main:in_trial_chamber run function main:mechanic/warding_stone_killer
function main:mechanic/warding_stone_particles