# Rolls whether the mainhand item should take durability damage this call,
# mirroring vanilla's Unbreaking odds (1 / (level + 1)). Result goes into hw_roll:
# 1 = apply damage, anything else = skip. Called by wear_<tier>.mcfunction.
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}] store result score @s hw_roll run random value 1..2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:unbreaking":2}}}}] store result score @s hw_roll run random value 1..3
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:unbreaking":3}}}}] store result score @s hw_roll run random value 1..4
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:unbreaking":2}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:unbreaking":3}}}}] run scoreboard players set @s hw_roll 1
