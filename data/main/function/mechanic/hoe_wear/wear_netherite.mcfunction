# Netherite Hoe, a.k.a. "Adamant Hoe" in item lore/name (data/smithing_table/recipe/adamant_hoe.json
# outputs minecraft:netherite_hoe - there is no separate Adamant item id), max_damage 5000 -> 1/5000 per point.
function main:mechanic/hoe_wear/roll
execute if score @s hw_roll matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":0.0002,"add":true}
