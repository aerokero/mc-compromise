# Iron Hoe, max_damage 500 (see data/crafting/recipe/iron_hoe.json) -> 1/500 per point.
function main:mechanic/hoe_wear/roll
execute if score @s hw_roll matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":0.002,"add":true}
