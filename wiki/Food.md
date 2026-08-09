# Food
Krótka lista jedzenia i sposobów jego przygotowania.

`Beetroot` pełni rolę pomidora, a `Glass Bottle` — butelki mleka.

Przy recepturach shapeless kolejność składników nie ma znaczenia.
`#minecraft:eggs` oznacza dowolne jajko z tego taga.

Czasy gotowania podano w sekundach; `100` ticków = 5 s, `200` = 10 s, `300` = 15 s.

### Pozostałe składniki

| Nazwa | Wygląd | Receptura | Metoda | Wynik | Właściwości |
|---|---|---|---|---|---|
| Sugar | `sugar` — tekstura własna | Honey Bottle | Crafting Table | Sugar ×2 | Składnik pośredni, niejadalny |

## Ryby

System łowienia zawiera 50 gatunków. Cod, Salmon, Pufferfish i Tropical Fish zachowują vanilla ID. Pozostałe gatunki są wariantami Cod/Salmon/Pufferfish i mają własne nazwy oraz rzadkość.

Surowe ryby gotują się w **Campfire** lub **Smoker**. W **Furnace** zostają zamienione w Charcoal. Po ugotowaniu większość niestandardowych gatunków traci swoją indywidualną nazwę i staje się Cooked Cod albo Cooked Salmon.

## Advancements and trading
System ma advancementy za gotowanie, przygotowywanie sekretnych potraw, łowienie ryb, konserwowanie jedzenia oraz przygotowanie wybranych curry, ramenów i deserów.

Villager **Cook/Butcher** może oferować niestandardowe potrawy, receptury i ryby.

--------------- DESIGN - TO BE DONE IN DATAPACK ------------------

Carrier migration and the new Bread/Pie/Sweet Berry Stew recipes are implemented. The tier tables below are retained as the design reference for further balancing and future additions.

## New basic food
These dishes should have yellow level tier/rarity.

| Nazwa | Wygląd | Receptura | Metoda | Właściwości |
|---|---|---|---|---|---|
| Baked Apple | `apple` | Apple | Campfire / Smoker | Baked Apple | +2 HP, Regen (0:10) |
| Baked Golden Apple | `golden_apple` | Golden Apple | Campfire / Smoker | +8 HP, Absorption (2:00), Regen (1:00) |
| Grilled Melon Slice | `melon_slice`  | Melon Slice | Campfire / Smoker | +2 HP, Fire Resistance (0:10) |
| Grilled Beetroot | `beetroot`  | Beetroot | Campfire / Smoker  | +4 HP, Strength (0:10) |
| Steamed Glow Berries | `glow_berries`| Glow Berries | Campfire / Smoker| +2 HP, Aura (0:03) |
| Steamed Golden Carrots | `golden_carrot`  | Golden Carrot | Campfire / Smoker| +2 HP, Night Vision (1:00) |
| Steamed Carrots | `carrot` | Carrot | Campfire / Smoker | +2 HP, Night Vision (0:10) |
| Steamed Sweet Berries | `sweet_berries` | Sweet Berries | Campfire / Smoker | +2 HP, Absorption (0:10) |

### Existing vanilla food reworked
These dishes should have regular common (white) tier/rarity.

| Nazwa | Wygląd | Receptura / źródło | Metoda | Wynik | Właściwości |
|---|---|---|---|---|---|
| Apple | `apple` | Oak / Dark Oak / Loot | Drop | +1 HP |
| Baked Potato | `baked_potato` | Potato | Campfire / Smoker (10 s) | +5 HP |
| Carrot | `carrot`| Uprawa / loot skrzyń | Zbiór | Carrot | +1 HP |
| Cooked Beef | `cooked_beef` | Beef | Campfire / Smoker (10 s) | Cooked Beef | +4 HP |
| Cooked Chicken | `cooked_chicken` | Chicken | Campfire / Smoker (10 s) | Cooked Chicken | +3 HP |
| Cooked Cod | `cooked_cod` | Cod / Tropical Fish | Campfire / Smoker (10 s) | Cooked Cod | +2 HP |
| Cooked Mutton | `cooked_mutton` | Mutton | Campfire / Smoker (10 s) | Cooked Mutton | +3 HP |
| Cooked Porkchop | `cooked_porkchop` | Porkchop | Campfire / Smoker (10 s) | Cooked Porkchop | +3 HP |
| Cooked Rabbit | `cooked_rabbit` | Rabbit | Campfire / Smoker (10 s) | Cooked Rabbit | +2 HP |
| Cooked Salmon | `cooked_salmon` | Salmon | Campfire / Smoker (10 s) | Cooked Salmon | +2 HP |
| Dried Kelp | `dried_kelp`  | Kelp | Campfire / Smoker / Crafting Table | Dried Kelp | +1 HP, Gills (0:10) |
| Golden Carrot | `golden_carrot`  | Carrot + 8 Gold Nuggets | Crafting Table | Golden Carrot | +2 HP, Night Vision (0:30) |
| Chorus Fruit | `chorus_fruit` | Chorus Plant | Zbiór | Chorus Fruit | +1 HP |
| Glow Berries | `glow_berries`| Cave Vines / loot skrzyń | Zbiór | Glow Berries | +1 HP |
| Melon Slice | `melon_slice`  | Melon | Zbiór | Melon Slice | +1 HP |
| Raw Beef | `beef` | Cow | Drop | Raw Beef | +1 HP |
| Raw Chicken | `chicken`  | Chicken | Drop | Raw Chicken | +1 HP |
| Raw Mutton | `mutton` | Sheep | Drop | Raw Mutton | +1 HP |
| Raw Porkchop | `porkchop`  | Pig / Hoglin | Drop | Raw Porkchop | +1 HP |
| Raw Rabbit | `rabbit` | Rabbit | Drop | Raw Rabbit | +1 HP |
| Raw Cod | `cod`  | Fishing / Cod | Łowienie / Drop | Raw Cod | +1 HP |
| Raw Salmon | `salmon` | Fishing / Salmon | Łowienie / Drop | Raw Salmon | +1 HP |
| Raw Tropical Fish | `tropical_fish` | Fishing / Tropical Fish | Łowienie / Drop | Raw Tropical Fish | +1 HP |
| Sweet Berries | `sweet_berries` | Sweet Berry Bush / loot skrzyń | Zbiór | Sweet Berries | +1 HP |
| Honey Bottle | `honey_bottle`  | Honey Bottle | Vanilla Honey given these attributes | Honey Bottle | +2 HP, Speed (0:30), Cleanse Maleffect |
| Popped Chorus Fruit | `popped_chorus_fruit`  | Chorus Fruit | Campfire / Smoker (5 s) | Popped Chorus Fruit | +2 HP, Levitation III (0:03) |

## Spalone jedzenie

Włożenie surowego ziemniaka, mięsa lub ryby do **Furnace** nie gotuje jedzenia — daje 1× `Charcoal`. Do gotowania używaj **Campfire** albo **Smoker**.

| Receptura | Składniki | Wynik |
|---|---|---|
| `charred_potato` | Potato | Charcoal |
| `charred_meat` | Rabbit, Chicken, Beef, Porkchop lub Mutton | Charcoal |
| `charred_fish` | Tropical Fish, Pufferfish, Cod lub Salmon | Charcoal |

## Tiered Food

To jest główna sekcja reworku jedzenia. Dawne `Crafted dishes` są tutaj uporządkowane według docelowego vanilla nośnika i tieru.

A mechanic that replaces many of the crafted meals into special/specific mushroom stews.
Food will be tiered based on complexity: Cookie -> Bread -> Pie -> Mushroom Stew. With special hidden suspicious stews.

All food will keep the primary vanilla name and texture, ex: "Cookie", "Bread", "Pumpkin Pie", "Mushroom Stew".
However, underneath, in gray color, they will have the proper name, example:

Pumpkin Pie
Apple Pie
When Eaten:
+8 HP Restored
Regen (3:00)

### Cookies
1st Tier:
| common | Cookie | `cookie` | Sugar + Wheat | Campfire / Smoker (10 s) | +2 HP, Haste (0:30) |

2nd Tier:
| uncommon | Brownie Cookie | `cookie` | Sugar + Wheat + Cocoa Beans | Crafting Table | +4 HP |
| uncommon | Sweet Berry Cookie | `cookie` | Sweet Berries + Sugar + Glass Bottle | Crafting Table | +4 HP, Regeneration (0:30) |
| uncommon | Glow Berry Cookie | `cookie` | Rotten Flesh + Sugar + Glass Bottle | Crafting Table | +4 HP, Aura (0:30) |
| uncommon | Chocolate Cookie | `cookie`| Sugar + Wheat + Cocoa Beans | Crafting Table | +4 HP, Haste (5:00) |

### Bread
#### 1st Tier:
| common | Bread | 3 Wheat | Crafted | +4 HP, Cleanse Maleffect |
2nd Tier:
| uncommon | Egg Bread | `bread` | Egg + Sugar + Bread | Crafting Table | +10 HP |
| uncommon | Fried Egg | `egg` | Egg | Campfire / Smoker | +2 HP; jadalne |
| uncommon | Kelp Bread | `bread` | Dried Kelp + Carrot + Sugar + Egg + Wheat | Crafting Table | +6 HP, Gills (8:00) |
| uncommon | Potato Bread | `bread` | Baked Potato + Egg + Bread + Beetroot Soup | Crafting Table | +16 HP |
| uncommon | Meat Bread | `bread` | Wheat + Cookie + Cooked Porkchop/Chicken | Crafting Table | +3 HP |
| uncommon | Beetroot Bread | Bread + 2x Beetroot  | Crafting Table | +6 HP, Strength II (3:00) |
| uncommon | Chocolate Bread | Bread + Sugar + Cocoa Beans ×2 | Crafting Table | +6 HP, Haste II (3:00) |
| uncommon | Sweet Berry Bread | Bread + Sugar + Sweet Berries | Crafting Table | +6 HP, Absorption (3:00) |
| uncommon | Glow Berry Bread | Bread + Sugar + Glow Berries | Crafting Table | +6 HP, Aura (3:00) |
| uncommon | Apple Bread | Bread + Sugar + Baked Apple  | Crafting Table | +6 HP, Regen (1:00) |
| uncommon | Carrot Bread | Bread + Sugar + Carrot | Crafting Table | +6 HP, Night Vision (3:00) |
| uncommon | Chocolate Carrot Bread | Carrot + Sugar + Cocoa Beans + Wheat | Crafting Table | +8 HP, Night Vision (10:00) |

| rare | Golden Apple Bread | Bread + Sugar + Baked Golden Apple | Crafting Table | +8 HP, Absorption (2:00), Regen II (0:20) |

Special recipe:
| uncommon | Honey Egg Bread | `bread` | Bread + Sugar + Honey Bottle + Egg | Crafting Table | +10 HP, Speed (3:00) |

### Mead
Special recipe; level in-between bread and stew.
| uncommon | Mead | `honey_bottle`| Honey Bottle + Sugar + Sweet Berry/Apple/Glow Berry | Crafting Table | +6 HP, Speed (5:00) |

### Pies
#### 1st Tier:
| common | Pumpkin Pie | `pumpkin_pie` | Pumpkin + Sugar + Egg | Crafting Table | +2 HP, Resistance (0:10) |

#### 2nd Tier:
| uncommon | Chorus Pie | `pumpkin_pie` | Popped Chorus Fruit + Snowball + Sugar + Beetroot Soup + Wheat | Crafting Table | +8 HP, Levitation (3:00) |
| uncommon | Golden Apple Pie | `pumpkin_pie` | Golden Apple + Sugar + Wheat | Crafting Table | +8 HP, Absorption (4:00), Regen II (0:45) |
| uncommon | Golden Carrot Pie | `pumpkin_pie` | Golden Carrot + Sugar + Cocoa Beans + Wheat | Crafting Table | +8 HP, Night Vision (20:00) |
| uncommon | Frozen Melon Pie | `pumpkin_pie` | Melon Slice + Snowball + Sugar + Glass Bottle | Crafting Table | +4 HP, Fire Resistance (10:00) |
| uncommon | Apple Pie | `pumpkin_pie` | Pumpkin + Sugar + Egg + Apple | Crafting Table | +8 HP, Regen (3:00) |
| uncommon | Melon Pie | `pumpkin_pie` | Pumpkin + Sugar + Egg + Melon | Crafting Table | +8 HP, Fire Resistance (3:00) |
| uncommon | Sweet Berry Pie | `pumpkin_pie` | Pumpkin + Sugar + Egg + Sweet Berries | Crafting Table | +8 HP, Absorption (3:00) |
| uncommon | Glow Berry Pie | `pumpkin_pie` | Pumpkin + Sugar + Egg + Glow Berries | Crafting Table | +8 HP, Aura (3:00) |
| uncommon | Beetroot Pie | `pumpkin_pie` | Pumpkin + Sugar + Egg + Beetroot | Crafting Table | | +8 HP, Strength (3:00) |

### Stews
Any mushroom can be used, unless specified otherwise.

#### 1st Tier:
| common | Mushroom Stew | `mushroom_stew` | Bowl + Brown Mushroom + Red Mushroom | Crafting Table | +4 HP |

#### 2nd Tier:
| uncommon | Loaded Potato Stew | `mushroom_stew` | Baked Potato + Cookie + Egg + Wheat + Bowl | Crafting Table | +16 HP |
| uncommon | Golden Carrot Stew | `mushroom_stew` | Golden Carrot + Brown Mushroom + Bowl | Crafting Table | +4 HP, Night Vision (10:00) |
| uncommon | Carrot Stew | `mushroom_stew` | Carrot + Brown Mushroom + Bowl | Crafting Table | +4 HP, Night Vision (5:00) |
| uncommon | Potato Stew | `mushroom_stew` | Baked Potato + Brown Mushroom + Bowl | Crafting Table | +10 HP |
| uncommon | Dried Kelp Stew | `mushroom_stew` | Dried Kelp Stock | Smoker (15 s) | +20 HP, Haste II (30:00) |
| uncommon | Beetroot Curry Stock | `mushroom_stew` | Beetroot Soup + Cookie + Sugar | Crafting Table | +6 HP |
| uncommon | Curry Stock | `mushroom_stew` | Bowl + Potato + Carrot + Beef/Mutton/Rabbit + Wheat + Sugar | Crafting Table | +8 HP |
| uncommon | Green Curry Stock | `mushroom_stew` | Beetroot Soup + Cod/Salmon + Green Dye + Wheat + Sugar | Crafting Table | +10 HP |
| uncommon | Dried Kelp Stock | `mushroom_stew` | Bowl + Brown Mushroom + Dried Kelp + Egg + Wheat + Porkchop/Chicken | Crafting Table | Dried Kelp Stock | +12 HP

#### 2nd Tier:
| uncommon | Pufferfish Stew | `mushroom_stew`| Bowl + Mushroom + Carrot/Potato + Dried Kelp + Cooked Cod/Salmon | Crafting Table | +12 HP, Conduit Power (8:00) |
| uncommon | Sweet Berry Stew | `mushroom_stew` | Bowl + Mushroom + Carrot/Potato + 2x Sweet Berries | Crafting Table | +12 HP, Absorption (8:00) |


#### 3rd Tier:
Special stews.

| rare | Green Curry | `mushroom_stew` | Green Curry Stock | Smoker (15 s) | Green Curry | +20 HP, +40% Speed (30:00) |
| rare | Meat Curry | `mushroom_stew` | Curry Stock | Smoker (15 s) | Meat Curry | +20 HP, Strength (30:00) |
| rare | Beetroot Curry | `rabbit_stew`  | Beetroot Curry Stock | Smoker (15 s) | Beetroot Curry | +20 HP, Regen (10:00) |

### Suspicious Stews
| rare | Crimson Fungus Stew | `suspicious_stew` | Crimson Fungus + Brown Mushroom + Glass Bottle | Crafting Table | Weakness II (1:00) |
| rare | Red Mushroom Stew | `suspicious_stew` | Red Mushroom + Brown Mushroom + Glass Bottle | Crafting Table | Poison II (1:00) |
| rare | Warped Fungus Stew | `suspicious_stew` | Warped Fungus + Brown Mushroom + Glass Bottle | Crafting Table | +4 HP, Invisibility (5:00) |

### Preserved Foods
| uncommon | Pickled Beetroot | `beetroot` | Beetroot + Brown Mushroom + Glass Bottle | Crafting Table | +6 HP, Strength (5:00) |

# Cakes
Alternative cake recipe.
| Cake | `cake` | 3x Sweet Berries + Sugar + Wheat + Egg | Crafting Table | Cake
