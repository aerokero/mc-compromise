# Called for a player who just broke a tracked instant-break plant (see tick.mcfunction)
# while a hoe happens to be in their mainhand. Figures out which hoe tier it actually is
# and hands off to the matching wear_<tier>.mcfunction. Order matters: the alloy hoes
# (Bronze/Shakudo/Electrum/Steel) all reuse the minecraft:stone_hoe item id and are only
# told apart by their minecraft:item_model component, so those checks must run before the
# plain minecraft:stone_hoe fallback at the bottom.
execute if items entity @s weapon.mainhand *[minecraft:unbreakable] run return 0
execute unless items entity @s weapon.mainhand #minecraft:hoes run return 0

execute if items entity @s weapon.mainhand minecraft:wooden_hoe run return run function main:mechanic/hoe_wear/wear_wood
execute if items entity @s weapon.mainhand minecraft:copper_hoe run return run function main:mechanic/hoe_wear/wear_copper
execute if items entity @s weapon.mainhand minecraft:golden_hoe run return run function main:mechanic/hoe_wear/wear_gold
execute if items entity @s weapon.mainhand minecraft:iron_hoe run return run function main:mechanic/hoe_wear/wear_iron
execute if items entity @s weapon.mainhand minecraft:diamond_hoe run return run function main:mechanic/hoe_wear/wear_diamond
execute if items entity @s weapon.mainhand minecraft:netherite_hoe run return run function main:mechanic/hoe_wear/wear_netherite
execute if items entity @s weapon.mainhand minecraft:stone_hoe[minecraft:item_model="minecraft:bronze_hoe"] run return run function main:mechanic/hoe_wear/wear_bronze
execute if items entity @s weapon.mainhand minecraft:stone_hoe[minecraft:item_model="minecraft:shakudo_hoe"] run return run function main:mechanic/hoe_wear/wear_shakudo
execute if items entity @s weapon.mainhand minecraft:stone_hoe[minecraft:item_model="minecraft:electrum_hoe"] run return run function main:mechanic/hoe_wear/wear_electrum
execute if items entity @s weapon.mainhand minecraft:stone_hoe[minecraft:item_model="minecraft:steel_hoe"] run return run function main:mechanic/hoe_wear/wear_steel
execute if items entity @s weapon.mainhand minecraft:stone_hoe run return run function main:mechanic/hoe_wear/wear_stone
