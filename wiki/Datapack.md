# Matcha Flavoured Datapack — complete change inventory

## Document scope

Detailed documents:

- [Progression](Progression.md) — Early Game, Nether, Deep Dark and End.
- [Enchants / Knowledge](Enchants_Knowledge.md) — enchantments, Knowledge and Divine Star.
- [Alloys](Alloys.md) — Bronze, Shakudo, Steel, Silver, Electrum and Netherite (formerly Adamant).
- [Food](Food.md) — cooking, custom ingredients, fish and trading.

This document describes the current state of the datapack and resource pack after the changes made during this session.

The wiki referenced by the user (`matcha-flavoured-datapack.fandom.com`) was not available for automatic reading: the server returned HTTP 402 and no indexed copy was found. This inventory is therefore based on the actual pack files rather than filenames alone.

Important distinction:

- the `minecraft:...` identifier often remains vanilla,
- an item's name, texture, recipe or behavior may nevertheless be completely changed,
- several changes have already been restored to vanilla, including Redstone, Gunpowder and Turtle Scute.

## 1. Vanilla items and blocks with changed names

### Resources and materials

| Vanilla ID | Current name | Role in the pack |
|---|---|---|
| `minecraft:nether_star` | Divine Star | Wither and first Ender Dragon reward; Knowledge ingredient |
| `minecraft:echo_shard` | Echo Shard | vanilla uses plus the former Divine Fragment role |
| `minecraft:turtle_scute` | Turtle Scute | restored vanilla name; no longer a Divine Fragment |
| `minecraft:shulker_shell` | Shakudo Alloy | alloy material and Copper Equipment upgrade ingredient |
| `minecraft:phantom_membrane` | Hepatizon Alloy | material used by the Bronze set |
| `minecraft:resin_brick` | Steel Alloy | material for steel equipment |
| `minecraft:heart_of_the_sea` | Electrum Alloy | Electrum material |
| `minecraft:netherite_ingot` | Netherite Ingot | highest-tier material |
| `minecraft:netherite_scrap` | Netherite Scrap | Netherite Ingot ingredient |
| `minecraft:prismarine_shard` | Raw Silver | raw silver |
| `minecraft:prismarine_crystals` | Silver Bullion | processed silver |
| `minecraft:piglin_brute_spawn_egg` | Carbon-Rich Iron | steel production ingredient |
| `minecraft:glow_ink_sac` | Phosphor | phosphor system ingredient |
| `minecraft:glistering_melon_slice` | Nazar | potion and chemistry ingredient |
| `minecraft:rabbit_hide` | Tattered Leather | alternative leather material |
| `minecraft:leather` | Sturdy Leather | stronger/separate leather category |
| `minecraft:redstone` | Redstone | name and function restored |
| `minecraft:gunpowder` | Gunpowder | name restored; sulfur remains separate |
| `minecraft:quartz` | Quartz | current name retained |
| `minecraft:blaze_powder` | Blaze Powder | crafted from Blaze Rods |
| `minecraft:blaze_rod` | Blaze Rod | progression ingredient |
| `minecraft:glowstone_dust` | Glowstone Dust | vanilla name restored |
| `minecraft:cookie` | Cheese | changed food product |
| `minecraft:enchanted_book` | Enchanted Book | output of the Knowledge system |
| `minecraft:disc_fragment_5` | Disc Fragment | ingredient in several music-disc recipes |

### Ores, blocks and devices

| Vanilla ID | Current name |
|---|---|
| `minecraft:nether_quartz_ore` | Nether Quartz Ore |
| `minecraft:lapis_ore` | Quartz Ore |
| `minecraft:emerald_ore` | Silver Ore |
| `minecraft:deepslate_emerald_ore` | Deepslate Silver Ore |
| `minecraft:end_stone_bricks` | Brown Sandstone |
| `minecraft:end_stone_brick_stairs` | Brown Sandstone Stairs |
| `minecraft:end_stone_brick_slab` | Brown Sandstone Slab |
| `minecraft:end_stone_brick_wall` | Brown Sandstone Wall |
| `minecraft:petrified_oak_slab` | Dirt Slab |
| `minecraft:glowstone` | Glowstone |
| `minecraft:end_rod` | Phosphor Rod |
| `minecraft:ochre_froglight` | Ochre Phosphor Lamp |
| `minecraft:pearlescent_froglight` | Pearlescent Phosphor Lamp |
| `minecraft:verdant_froglight` | Verdant Phosphor Lamp |
| `minecraft:furnace` | Basic Furnace |
| `minecraft:smoker` | Oven |
| `minecraft:comparator` | Redstone Comparator |
| `minecraft:repeater` | Redstone Repeater |
| `minecraft:redstone_torch` | Redstone Torch |
| `minecraft:redstone_block` | Block of Redstone |
| `minecraft:redstone_lamp` | Redstone Lamp |

### Netherite (formerly Adamant)

Netherite IDs are displayed with their vanilla names, including Netherite Scrap, Ingot, Block, tools, armor, Horse Armor and Nautilus Armor. The pack also adds Netherite Spear, Claymore, Mattock and Dolabra.

## 2. Alloys and metallurgy

The pack reuses vanilla item IDs as alloy materials.

### Bronze

- `phantom_membrane` is Bronze/Hepatizon Alloy,
- recipe: 7 Copper Ingots + Prismarine Crystal + Gold Ingot,
- upgrades Copper tools and armor,
- adds Bronze Spear, tools, armor, Mattock, Dolabra, Laurel and Bronze Elytra.

### Shakudo

- `shulker_shell` is Shakudo Alloy,
- recipe: 6 Copper Ingots + 3 Gold Ingots,
- upgrades Copper Equipment,
- adds Palatinate/Shakudo tools, weapons and armor.

### Steel

- `piglin_brute_spawn_egg` is Carbon-Rich Iron,
- Carbon-Rich Iron is made from 4 Iron Ingots and a Coal Block,
- smelting it produces `resin_brick`, displayed as Steel Alloy,
- Steel upgrades Iron Equipment and adds tools, armor, Spear, Mattock, Dolabra and Shears,
- steel recipes also exist for selected iron construction items.

### Electrum and Silver

- `heart_of_the_sea` is Electrum Alloy,
- Electrum uses Gold Ingots, Echo Shard and Prismarine Crystals,
- `prismarine_shard` is Raw Silver,
- `prismarine_crystals` are Silver Bullion,
- Silver is obtained by smelting Raw Silver,
- silver and Electrum tools and armor are added.

### Netherite

- `netherite_ingot` is Netherite Ingot,
- recipe: 4 Netherite Scrap + Echo Shard + Gold Ingots,
- it is the base of the highest-tier tools and armor,
- Netherite Claymore, Mattock and Dolabra are also added.

## 3. Divine Star, Echo Shard and Knowledge

### Divine Star

`minecraft:nether_star` is displayed as `Divine Star`. It still drops from the Wither because the Wither loot table was not replaced.

After the first Ender Dragon kill, the datapack additionally creates a Divine Star in the End at Y=100.

Divine Star can be crafted from 9 Echo Shards and decomposed back into 9 Echo Shards. It has custom visual effects such as no gravity, End Rod/Electric Spark particles and a periodic flash.

### Echo Shard as the former Divine Fragment

Echo Shard retains its vanilla uses and additionally takes over the former Divine Fragment uses:

- Divine Star,
- Ender Eye,
- Electrum Alloy,
- Netherite Ingot,
- Crystal Heart,
- Knowledge of Unbreaking,
- selected structure and mob loot that previously returned Turtle Scute as Divine Fragment.

Vanilla Echo Shard uses such as Recovery Compass, Music Disc 5, Sculk Sensor and Sculk Shrieker remain available.

### Knowledge

The pack adds recipes that combine vanilla and custom enchantments into Knowledge books. Knowledge has custom names, lore, models and, in some cases, custom datapack effects. The full two-stage process is documented in [Enchants_Knowledge.md](Enchants_Knowledge.md).

## 4. Redstone, Copper and sulfur

The original pack mixed Redstone with Copper Wire, inverters and a sulfur system. The current state is:

- Redstone Ore drops Redstone,
- Deepslate Redstone Ore also drops Redstone,
- Redstone Ore, Redstone Dust, Repeater, Comparator, Redstone Torch, Redstone Block and Redstone Lamp names are restored,
- Copper Wire and Copper ↔ Redstone conversion were removed,
- custom recipes for basic Redstone devices were removed so vanilla recipes are used,
- vanilla Redstone textures were restored,
- Copper is a separate material.

Sulfur remains a separate system present in Minecraft 26.2 and was not removed. The pack still contains Sulfur Goo, Sulfur Ore, Sulfur Chunks and chemistry recipes; Nether Quartz Ore is no longer part of that system.

Gunpowder now has its restored name, but this does not remove the sulfur system.

## 5. Tattered Leather and leather

`rabbit_hide` is displayed as Tattered Leather and is used as a basic, weaker leather material:

- some leather armor recipes use Rabbit Hide,
- Leather can be processed into several Tattered Leather,
- the material is used in bundles, item frames and selected loot tables,
- some mobs have modified leather loot.

The pack also contains Sturdy Leather and a complete Sturdy Leather Armor set.

## 6. The End

The End dimension does not have a completely new generator, but several progression elements are changed:

- Shulker drops a Shulker Box instead of Shulker Shell,
- Shulker Shell is Shakudo Alloy; Turtle Scute no longer serves as Divine Fragment,
- End Stone Bricks are renamed Brown Sandstone and receive matching recipes,
- Chorus Fruit has additional recipes for Popped Chorus Fruit and Chorus Pie,
- Chorus Pie is also available from Butcher/Cook trades,
- Ender Pearl has an additional Librarian/Mouthpiece trade,
- Bronze Elytra is crafted at the smithing table,
- End advancements have custom titles, descriptions and icons,
- the first Ender Dragon kill gives Divine Star.

Enderman still drops Ender Pearls. The End City loot table is replaced with a custom reward set.

## 7. Day, night and sleep

The day/night cycle and sleeping are vanilla. The former extended-cycle system (manual `time add 1` every 3 ticks, disabled `advance_time` gamerule, custom sleep-time acceleration) and the post-dragon "no surface spawns" mob-spawn filter (`check_mob_spawn`/`safe_surface`, `sky_spawn`/`surface_spawn` predicates, `gamerule_safe_surface` scoreboard) were removed. The custom per-mob attribute changes for `#main:mundane_hostiles` (weaker skeletons/creepers/cave spiders, faster zombies, stronger-but-slower husks, no armour/weapon drops) were removed as well; mob spawning, health, speed, damage and drop chances are vanilla again.

## 8. Food, cooking and fishing

The pack adds an extensive cooking and ingredient system. It reuses some vanilla items as new products and adds many items under the `kleispack` namespace.

Main groups include:

- bread and cakes,
- mushroom stews, ramen, curry and fungus stews,
- potato and carrot dishes,
- fruit preserves,
- desserts and drinks,
- cheese and dairy products,
- dried, preserved and grilled foods,
- many new fish species,
- special fish obtained by fishing in specific biomes.

Fishing uses custom loot tables for biomes, structures and special bundles.

## 9. Villager trades and profession names

Displayed profession names are changed:

| Vanilla profession | Current name |
|---|---|
| Leatherworker | Forester |
| Cartographer | Archaeologist |
| Armorer | Engineer |
| Cleric | Chemist |
| Toolsmith | Jeweler |
| Butcher | Cook |
| Librarian | Mouthpiece |
| Wandering Trader | Wandering Traveller |

Many custom trades are added for food, fish, Divine items, alloys, books, maps and building materials. Some villagers also receive custom religious or literary items.

## 10. Enchantments and equipment mechanics

In addition to Knowledge, the pack contains custom enchantments and effects:

- Anemos,
- Bloodrage,
- Cleanses,
- additional Conduit Power,
- Divinity,
- Fire Proof,
- Frost Protection,
- Haste,
- Reach,
- Regeneration,
- Riposte,
- Sanguine,
- Slaughter,
- Traversal,
- Apotropaic/Warding,
- Zephyr.

These effects are implemented through datapack functions and can change damage, reach, movement, effect cleansing, elemental protection, regeneration and damage against undead mobs.

## 11. Loot, mobs and spawning

The pack replaces a large number of vanilla loot tables, including:

- mob drops,
- structure and chest loot,
- fishing,
- archaeology,
- Sculk loot,
- plant and ore block drops,
- spawner drops,
- Piglin bartering,
- special Divine and literary loot tables.

Not every replaced loot table represents a major system change; some files exist only to replace a single item, name, model or component.

Biome files change or preserve spawning settings in many biomes. The End remains mostly vanilla in its main generation, but its loot and progression are modified.

## 12. Other added systems

The pack also includes:

- Copper tools, armor, Mattock, Dolabra and Shears,
- alloy tools and weapons,
- Bronze Elytra,
- Crystal Heart/Heart Container,
- an additional Titanium Compass,
- invisible item frames,
- seed and material bundles,
- Ofuda,
- custom books: Quran, Tanakh, Avesta, Paradise Lost, Divine Comedy, Book of Enoch and Key of Solomon,
- Clay Fetishes,
- additional advancements and tutorial systems,
- custom mob, block, item, banner, trim and model textures.

## 13. Elements removed or withdrawn during this session

- All Pride content was removed.
- Custom music and new music discs were removed; vanilla discs remain.
- Redstone was restored as Redstone and separated from Copper.
- Gunpowder regained its vanilla name.
- Turtle Scute regained its vanilla name and function.
- The former Divine Fragment function was moved to Echo Shard.
- Divine Star replaced the former Divine Favour name.

## 14. Main candidates for further simplification

If the goal is to bring the pack closer to vanilla, the largest impact would come from:

1. restoring vanilla functions for items used as ingredients (`spawn_egg`, `phantom_membrane`, `heart_of_the_sea`, `shulker_shell`, `resin_brick`),
2. separating every alloy from vanilla item IDs,
3. deciding whether to keep Knowledge or restore normal enchantments,
4. reducing the custom food and fishing systems,
5. restoring vanilla mob and structure loot tables,
6. organizing the names of blocks, ores and villager professions.

The day/night cycle, sleep timing and the custom mob spawn-filter/attribute system (item 6 in a previous revision of this list) have already been restored to vanilla.
