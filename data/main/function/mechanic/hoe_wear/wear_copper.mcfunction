# Copper Hoe (all oxidation stages share the minecraft:copper_hoe id, distinguished
# only by the minecraft:damage fraction used for the range_dispatch model), max_damage
# 350 (see data/crafting/recipe/copper_hoe.json) -> 1/350 per point.
function main:mechanic/hoe_wear/roll
execute if score @s hw_roll matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":0.0028571429,"add":true}
