# Fallback for a plain minecraft:stone_hoe that isn't one of the Bronze/Shakudo/Electrum/Steel
# alloys (none of this pack's recipes actually produce one, but it can still be /given or
# looted), vanilla default max_damage 131 -> 1/131 per point.
function main:mechanic/hoe_wear/roll
execute if score @s hw_roll matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":0.0076335878,"add":true}
