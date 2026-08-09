# Diamond Hoe, max_damage 2500 (see data/crafting/recipe/diamond_hoe.json) -> 1/2500 per point.
function main:mechanic/hoe_wear/roll
execute if score @s hw_roll matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":0.0004,"add":true}
