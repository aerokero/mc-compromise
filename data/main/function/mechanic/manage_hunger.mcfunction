# Sprint stamina: the hunger bar doubles as the sprint bar.
# Sprinting drains it from full to empty in ~7-8s; stopping regenerates it after a
# short delay. natural_health_regeneration is off (setup/gamerules.mcfunction) so
# none of this causes starvation damage or passive healing - food level is purely
# a stamina readout now. The food level can't be set directly (only health/xp/level
# can), so it's pushed with hunger/saturation effects instead, same trick this pack
# already used here before.
#
# Tunables:
#   SprintDrainTimer threshold (8)  - ticks per -1 food while sprinting
#   SprintIdleTimer threshold (15)  - delay in ticks after stopping before regen starts
#   SprintRegenTimer threshold (3)  - ticks per +2 food while regenerating

# Sprinting: drain the bar, and cancel any pending regen state
execute as @a at @s if predicate main:is_sprinting run scoreboard players set @s SprintIdleTimer 0
execute as @a at @s if predicate main:is_sprinting run scoreboard players set @s SprintRegenTimer 0
execute as @a at @s if predicate main:is_sprinting run scoreboard players add @s SprintDrainTimer 1
execute as @a at @s if predicate main:is_sprinting if score @s SprintDrainTimer matches 8.. run scoreboard players set @s SprintDrainTimer 0
execute as @a at @s if predicate main:is_sprinting if score @s SprintDrainTimer matches 0 run effect give @s minecraft:hunger 1 255 true

# Not sprinting: reset the drain, wait out the delay, then regenerate.
# This also masks any incidental food loss from mining/combat/falling/jumping,
# since the bar gets pulled back to full the moment sprinting stops.
execute as @a at @s unless predicate main:is_sprinting run scoreboard players set @s SprintDrainTimer 0
execute as @a at @s unless predicate main:is_sprinting run scoreboard players add @s SprintIdleTimer 1
execute as @a at @s unless predicate main:is_sprinting if score @s SprintIdleTimer matches 15.. run scoreboard players add @s SprintRegenTimer 1
execute as @a at @s unless predicate main:is_sprinting if score @s SprintRegenTimer matches 3.. run scoreboard players set @s SprintRegenTimer 0
execute as @a at @s unless predicate main:is_sprinting if score @s SprintIdleTimer matches 15.. if score @s SprintRegenTimer matches 0 run effect give @s minecraft:saturation 1 1 true
