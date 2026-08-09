# Shakudo Hoe (data/smithing_table/recipe/shakudo_hoe.json outputs minecraft:stone_hoe with
# minecraft:item_model=minecraft:shakudo_hoe), max_damage 1000 -> 1/1000 per point.
function main:mechanic/hoe_wear/roll
execute if score @s hw_roll matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":0.001,"add":true}
