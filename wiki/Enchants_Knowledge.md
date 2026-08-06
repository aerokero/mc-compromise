# Enchants / Knowledge

## How the system works

Knowledge items are special enchanted books with stored enchantments, custom names, lore and models. Most are crafted in a regular crafting table.

Progression:

```text
Book + Blaze Powder + Amethyst Shard
        ↓
Knowledge Book
        ↓
Knowledge Book + Knowledge ingredients
        ↓
Enchanted Book with stored enchantments
```

The first stage creates a real `minecraft:knowledge_book`. The second stage converts it into a `minecraft:enchanted_book` with stored enchantments.

## Knowledge Book

Recipe: `knowledge:knowledge_book`

```text
Amethyst Shard
Blaze Powder
Book
```

Result: 1 `minecraft:knowledge_book`.

Crafting this book unlocks the Knowledge recipes through an advancement.

## Recipe legend

In the diagrams below:

- `B` = Knowledge Book,
- other letters are explained below each diagram,
- a space means an empty slot,
- recipes are shaped, so the arrangement matters,
- `minecraft:...` denotes a technical item ID; names in parentheses are the pack's display names.

## All Knowledge recipes

### Bane of Arthropods — Bane of Arthropods

Recipe: `knowledge:bane_of_arthopods`

```text
  S  
 SBS 
  S  
```

`S` = Spider Eye. Result: Bane of Arthropods V.

### Channeling + Smite — Storm Channeling

Recipe: `knowledge:channeling_smite`

```text
ESE
SBS
EIE
```

- `S` = Prismarine Crystals (Silver Bullion),
- `E` = Glowstone Dust,
- `I` = Iron Ingot.

Result: Smite III and Channeling I.

### Density + Knockback + Punch — Heavy Blow

Recipe: `knowledge:density_knockback_punch`

```text
FSF
FBF
FFF
```

- `F` = Iron Block,
- `S` = Resin Brick (Steel Alloy).

Result: Density II, Knockback II and Punch II.

### Depth Strider + Riptide + Aqua Affinity + Respiration — Aquatic Mastery

Recipe: `knowledge:depth_strider_riptide_aqua_affinity_respiration`

```text
  S  
 SBS 
  S  
```

`S` = Nautilus Shell. Result: Depth Strider II, Riptide I, Aqua Affinity I and Respiration II.

### Efficiency + Unbreaking — Durability

Recipe: `knowledge:efficiency_unbreaking`

```text
ESE
pBd
EDE
```

- `E` = Glowstone Dust,
- `S` = Divine Star (`nether_star`),
- `D` = Diamond,
- `p` = Diamond Pickaxe,
- `d` = Diamond Axe.

Result: Efficiency III and Unbreaking III.

### Feather Falling — Feather Falling

Recipe: `knowledge:feather_falling`

```text
SbS
FBF
SFS
```

- `S` = Wind Charge,
- `F` = Feather,
- `b` = Honeycomb.

Result: Feather Falling II.

### Flame + Fire Aspect + Fire Protection — Flameguard

Recipe: `knowledge:flame_fire_aspect_fire_protection`

```text
ESE
SBS
ESE
```

- `E` = Gold Ingot,
- `S` = Fire Charge.

Result: Flame I, Fire Aspect I and Fire Protection III.

### Frost Walker + Frost Protection — Frostwalker

Recipe: `knowledge:frost_walker_frost_protection`

```text
SbS
FBF
SFS
```

- `S` = Golden Apple,
- `F` = Blue Ice,
- `b` = Golden Hoe.

Result: Frost Walker II and custom Freezing Protection II.

### Infinity — Endless Quiver

Recipe: `knowledge:infinity`

```text
ASA
ABA
AAA
```

- `A` = Spectral Arrow,
- `S` = Ender Pearl.

Result: Infinity I.

### Lunge + Breach — Armor Breaker

Recipe: `knowledge:lunge_breach`

```text
  b  
aBc 
  F  
```

- `b` = Red Dye,
- `a` = Iron Sword or Iron Spear,
- `c` = Shield,
- `F` = Iron Helmet.

Result: Lunge II and Breach II.

### Luck of the Sea + Lure + Loyalty — Master Angler

Recipe: `knowledge:lure_luck_of_the_sea`

```text
  b  
FBF 
  F  
```

- `F` = Nautilus Shell,
- `b` = Azure Bluet.

Result: Luck of the Sea III, Lure III and Loyalty I.

### Mending — Mending

Recipe: `knowledge:mending`

```text
ESE
EBE
EDE
```

- `E` = Diamond,
- `S` = Divine Star (`nether_star`),
- `D` = Diamond Block.

Result: Mending I.

### Piercing + Impaling — Piercing Trident

Recipe: `knowledge:piercing_impaling`

```text
SbS
FBF
SFS
```

- `S` = Spectral Arrow,
- `F` = Gold Ingot,
- `b` = Disc Fragment (`disc_fragment_5`).

Result: Impaling III and Piercing II.

### Power + Multishot — Sharpshooter

Recipe: `knowledge:power_multishot`

```text
SbS
FBF
SFS
```

- `S` = Spectral Arrow,
- `F` = Porkchop,
- `b` = Prismarine Crystals (Silver Bullion).

Result: Power II and Multishot I.

### Reach — Extended Reach

Recipe: `knowledge:reach`

```text
  S  
 SBS 
  S  
```

`S` = Ender Pearl. Result: custom Reach I.

### Silk Touch — Silk Touch

Recipe: `knowledge:silk_touch`

```text
ASA
SBS
ASA
```

- `S` = Shulker Shell (Shakudo Alloy),
- `A` = Glowstone Dust.

Result: Silk Touch I.

### Swift Sneak + Soul Speed — Swift Strider

Recipe: `knowledge:swift_sneak_soul_speed`

```text
aba
FBF
aFa
```

- `a` = Sculk,
- `F` = Echo Shard,
- `b` = Iron Hoe.

Result: Swift Sneak II and Soul Speed II.

### Traversal — Traversal

Recipe: `knowledge:traversal`

```text
CLC
WBW
   
```

- `C` = Emerald,
- `L` = Leather Boots (Sturdy Leather Boots in the pack),
- `W` = any Wool,
- `B` = Knowledge Book.

Result: custom Traversal III.

### Unbreaking — Unbreaking

Recipe: `knowledge:unbreaking`

```text
ESE
DBD
EDE
```

- `E` = Glowstone Dust,
- `S` = Echo Shard,
- `D` = Diamond.

Result: Unbreaking II.

### Warding + Smite — Warding

Recipe: `knowledge:warding`

```text
SsS
LBL
SLS
```

- `S` = Glistering Melon Slice (Nazar),
- `s` = Prismarine Crystals (Silver Bullion),
- `L` = Lapis Lazuli.

Result: custom Warding II and Smite II.

### Wind Burst + Anemos — Wind Burst

Recipe: `knowledge:wind_burst_anemos`

```text
SSS
SBS
SHS
```

- `S` = Wind Charge,
- `H` = Heart of the Sea (Electrum Alloy).

Result: custom Anemos I and Wind Burst III.

### Zephyr — Zephyr

Recipe: `knowledge:zephyr`

```text
SHS
FBF
SFS
```

- `S` = Wind Charge,
- `F` = Feather,
- `H` = Allium.

Result: custom Zephyr I.

## Knowledge obtained from villagers

Not all special books have to be crafted. Custom librarians also offer Knowledge books:

- Librarian level 2, `avesta_1` — Protection,
- Librarian level 2, `avesta_2` — Efficient Durability,
- Librarian level 3, `enoch` — Sharpness,
- Librarian level 4, `solomon` — Mending.

These trades are connected to the custom Avesta, Book of Enoch and Key of Solomon books, as well as Ofuda items.

No standard loot table was found that directly provides most Knowledge books. Crafting is the main source, with some books coming from librarian trades.

## Recipe unlocking

The main path is:

1. obtain an Amethyst Shard,
2. obtain Blaze Powder,
3. craft the Knowledge Book,
4. gain access to the main Knowledge recipes,
5. craft individual Knowledge books from their ingredients.

Items such as Echo Shard, Divine Star, Shulker Shell, Heart of the Sea and Wind Charge can be both Knowledge ingredients and parts of other pack systems.

## Using the books

The resulting Knowledge books contain stored enchantments. They can be applied at an anvil to compatible tools, weapons and armor. Some contain vanilla enchantments, while others contain custom enchantments handled by the datapack.

## Main custom enchantments

In addition to vanilla enchantments, the pack contains:

- Anemos,
- Bloodrage,
- Cleanses,
- Divinity,
- Fire Proof,
- Freezing Protection,
- Haste,
- Reach,
- Regeneration,
- Riposte,
- Sanguine,
- Slaughter,
- Traversal,
- Warding,
- Zephyr.

Their behavior is implemented through datapack functions, including changes to damage, movement, reach, regeneration, resistance and effects against undead mobs.

## Simplification notes

If the system is kept partially, the least invasive option is to keep the custom enchantments and remove only the combination of several vanilla enchantments into one Knowledge book.

For a fully vanilla direction, remove or restore:

- the Knowledge Book recipe using Amethyst Shard and Blaze Powder,
- all Knowledge recipes,
- custom librarian trades,
- custom enchantments and effect functions,
- custom Hell/Knowledge advancements.
