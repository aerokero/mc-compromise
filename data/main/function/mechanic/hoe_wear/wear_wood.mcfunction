# Wooden Hoe, max_damage 200 (see data/crafting/recipe/wooden_hoe.json) -> 1/200 per point.
function main:mechanic/hoe_wear/roll
execute if score @s hw_roll matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":0.005,"add":true}
