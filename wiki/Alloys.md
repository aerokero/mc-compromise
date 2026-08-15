# Alloys

## General model

For most alloys, the datapack does not add separate technical item IDs. Instead, it reuses existing vanilla items and changes their names, models, recipes and uses.

Alloys are mainly materials used at the smithing table.

## Bronze / Hepatizon

Technical item: `minecraft:phantom_membrane`.

Material recipe:

- 7 Copper Ingots,
- 1 Prismarine Crystal,
- 1 Gold Ingot.

Bronze provides:

- Bronze Sword, Axe, Pickaxe, Shovel and Hoe,
- Bronze Spear,
- Bronze Mattock and Dolabra,
- Bronze Helmet, Chestplate, Leggings and Boots,
- Bronze Laurel,
- Bronze Elytra.

Bronze upgrades Copper Equipment at the smithing table.

## Shakudo / Palatinate

Technical item: `minecraft:shulker_shell`.

Material recipe:

- 6 Copper Ingots,
- 3 Gold Ingots.

Shakudo provides:

- Palatinate/Shakudo Sword, Axe, Pickaxe, Shovel and Hoe,
- Shakudo Spear,
- Shakudo Mattock and Dolabra,
- Palatinate Helmet, Chestplate, Leggings and Boots.

Shakudo is also a special upgrade ingredient for Copper Equipment. Shulker Shell is not currently an ordinary shell within the pack's progression.

## Steel

Technical items:

- `minecraft:piglin_brute_spawn_egg` = Carbon-Rich Iron,
- `minecraft:resin_brick` = Steel Alloy.

Carbon-Rich Iron is made from:

- 4 Iron Ingots,
- 1 Coal Block.

Carbon-Rich Iron is smelted in a blast furnace into Steel Alloy.

Steel provides:

- Steel Sword, Axe, Pickaxe, Shovel and Hoe,
- Steel Spear,
- Steel Shears,
- Steel Mattock and Dolabra,
- Steel Helmet, Chestplate, Leggings and Boots.

The pack also includes steel recipes for selected construction items:

- Bucket,
- Cauldron,
- Chain,
- Iron Bars,
- Iron Door,
- Iron Trapdoor,
- Minecart.

## Electrum

Technical item: `minecraft:heart_of_the_sea`.

Recipe:

- 4 Gold Ingots,
- 1 Echo Shard,
- 4 Prismarine Crystals.

Electrum upgrades Diamond Equipment and provides a complete set:

- Sword, Axe, Pickaxe, Shovel and Hoe,
- Spear,
- Mattock and Dolabra,
- Helmet, Chestplate, Leggings and Boots.

## Netherite (formerly Adamant)

Technical items:

- `minecraft:netherite_scrap` = Netherite Scrap,
- `minecraft:netherite_ingot` = Netherite Ingot.

Current Netherite Ingot recipe:

- 4 Netherite Scrap,
- 1 Echo Shard,
- 4 Gold Ingots.

Netherite is the highest tier and provides:

- Netherite Sword, Axe, Pickaxe, Shovel and Hoe,
- Netherite Spear,
- Netherite Claymore,
- Netherite Mattock and Dolabra,
- Netherite Armor,
- Netherite Horse Armor and Netherite Nautilus Armor,
- Block of Netherite.

## Dependencies on other systems

- Bronze uses Copper.
- Shakudo uses Copper and Shulker Shell.
- Steel uses Iron and Coal.
- Electrum uses vanilla Prismarine Crystals as a catalyst.
- Electrum uses Gold, Prismarine and Echo Shard.
- Netherite uses Netherite Scrap, Gold and Echo Shard.
- Some alloys are made at the smithing table and therefore depend on obtaining a Smithing Table and the required templates/triggers.

## Simplification notes

If alloys are kept while the pack is brought closer to vanilla, the safest approach is to:

1. keep the alloy equipment sets as additional gear,
2. restore vanilla names for items used as materials,
3. move materials to separate items instead of reusing `phantom_membrane`, `heart_of_the_sea`, `shulker_shell` and `resin_brick`,
4. keep the restored Netherite display names; technical `adamant_*` filenames can remain without affecting gameplay.
