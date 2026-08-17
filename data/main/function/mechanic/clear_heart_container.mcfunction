execute if items entity @p container.* *[minecraft:item_model="minecraft:heart_container"] run scoreboard players add @p Hearts 2
execute if items entity @p container.* *[minecraft:item_model="minecraft:heart_container"] run tag @p add AddingHearts
execute if items entity @p container.* *[minecraft:item_model="minecraft:heart_container"] run effect give @p regeneration 3 10 true
execute if items entity @p container.* *[minecraft:item_model="minecraft:heart_container"] run clear @p *[minecraft:item_model="minecraft:heart_container"] 1
playsound minecraft:item.totem.use player @p[tag=AddingHearts] ~ ~ ~ .5 0 0
advancement revoke @p[tag=AddingHearts] only main:mechanics/heart_container_obtained
function main:mechanic/set_max_hp
execute at @a run execute if items entity @p container.* *[minecraft:item_model="minecraft:heart_container"] run function main:mechanic/process_heart_container