# Steel Hoe (data/smithing_table/recipe/steel_hoe.json outputs minecraft:stone_hoe with
# minecraft:item_model=minecraft:steel_hoe), max_damage 3000 -> 1/3000 per point.
function main:mechanic/hoe_wear/roll
execute if score @s hw_roll matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":0.0003333333,"add":true}
