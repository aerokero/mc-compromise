execute as @e[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute at @s if predicate main:in_trial_chamber run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute at @s if predicate main:in_trial_chamber run summon tnt ~ ~ ~ {fuse:0}
execute as @e[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute at @s if predicate main:in_trial_chamber run particle minecraft:sculk_soul ~ ~ ~ .1 .1 .1 .5 100
advancement revoke @a only main:mechanics/enter_trial_chamber