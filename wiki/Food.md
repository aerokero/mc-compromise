# Food

## General model

Food is one of the pack's largest systems. It adds many recipes for cooking, campfire cooking, processing, pickling and preparing multi-stage meals.

Recipes are mainly located in `data/food/recipe`, while some food loot tables are in `data/minecraft/loot_table/food`.

## Changed vanilla ingredients

| Vanilla ID | Current name/role |
|---|---|
| `beetroot` | Tomatoes |
| `beetroot_seeds` | Tomato Seeds |
| `wheat_seeds` | Wheat Grain |
| `glass_bottle` | Milk Bottle |
| `rabbit` | Raw Flesh |
| `cooked_rabbit` | Cooked Flesh |

Custom dishes no longer reuse unrelated vanilla IDs (spawn eggs, potions, etc.) as texture/name carriers. Each dish's `result.id` is instead its closest vanilla food equivalent (e.g. potato dishes use `potato`, apple dishes use `apple`, stews/curries use `rabbit_stew`/`mushroom_stew`/`beetroot_soup`, Cheese uses `milk_bucket`), with no custom `item_model` override — the dish keeps its own name/lore/effects via item components, but visually and by ID it's just that base item. Flour, Flour Bag and Dough all resolve to `wheat`; the four "uncooked" stew bases (for Curry, Green Curry, Paneer Makhani, Ramen) resolve to `bowl`.

## Basic processing

The pack adds or modifies recipes for:

- Dough and Flour,
- Flour Bag,
- Bread,
- Milk Bottle,
- Cheese,
- Sugar from Honey Bottle,
- Dried Kelp and Dried Kelp Block,
- Baked Potato,
- Baked Pumpkin,
- Baked Apple,
- Baked Golden Apple,
- Golden Carrot,
- Cooked Meat and Cooked Fish.

Most basic foods can be prepared both in a furnace and on a campfire.

## Vegetables and preserves

### Potatoes

- Pickled Potatoes,
- Charred Potato,
- Latke,
- various dishes combining potatoes with other ingredients.

### Carrots

- Steamed Carrots,
- Golden Steamed Carrots,
- Pickled Carrots,
- Golden Pickled Carrots,
- Carrot Cupcake,
- Golden Carrot Cupcake.

### Tomatoes

Beetroot is used as Tomatoes, and Beetroot Seeds as Tomato Seeds. Added recipes include:

- Grilled Tomatoes,
- Pickled Tomatoes,
- Bruschetta.

### Fruit

- Grilled Melon,
- Rind Jam,
- Melon Sorbet,
- Glow Berry Mash,
- Glow Berry Jam,
- Glow Berry Crumble,
- Sweet Berry Mash,
- Sweet Berry Jam,
- Sweet Berry Danish,
- Sweet Berry Toast,
- Canned Apples,
- Apple Empanada,
- Canned Golden Apples,
- Golden Empanada.

## Mushrooms and the Nether

The pack adds cooking and pickling for:

- Brown Mushroom,
- Red Mushroom/Toadstool,
- Crimson Fungus,
- Warped Fungus.

Examples:

- Braised Brown Mushroom,
- Braised Toadstool,
- Braised Crimson Fungus,
- Braised Warped Fungus,
- Pickled Mushrooms,
- Pickled Crimson Fungus,
- Pickled Warped Fungus.

## Prepared dishes

Larger meals include:

- Stroganoff,
- Crimson Stroganoff,
- Red Mushroom Stroganoff,
- Warped Stroganoff,
- Ramen/Tonkotsu Ramen,
- Japanese Curry,
- Green Curry,
- Paneer Makhani,
- Gnocchi,
- Gimmari,
- Bokguk,
- Naan,
- Pupusa,
- Puerquito,
- French Toast,
- Honied French Toast,
- Fried Egg,
- Bruschetta.

Many of them have an “uncooked” stage and are then cooked in a furnace or on a campfire.

## Desserts and drinks

- Chocolate,
- Brownie,
- Chocolate Chip Cookie,
- Carrot Cupcake,
- Golden Carrot Cupcake,
- Mead,
- Honey Ginger Tea,
- Pumpkin Jam,
- Pumpkin Empanada.

## Chorus and the End

Chorus Fruit receives additional uses:

- Popped Chorus Fruit can be prepared in a furnace and on a campfire,
- Popped Chorus Fruit is an ingredient in Chorus Mochi,
- Chorus Mochi is custom food and an additional villager trade with the Cook/Butcher.

## Fish

Fishing is expanded with many fish species, including:

- Alaska Blackfish,
- Anchovy,
- Arapaima,
- Armoured Catfish,
- Bass,
- Black Seabass,
- Bluegill,
- Bujurqui,
- Carp,
- Catfish,
- Crappie,
- European Eel,
- Flounder,
- Flying Fish,
- Freshwater Puffer,
- Gar,
- Guppy,
- Gurnard,
- Herring,
- Humpback Whitefish,
- Lamprey,
- Mahi Mahi,
- Mediterranean Killifish,
- Monkfish,
- Muskellunge,
- Northern Pike,
- Oarfish,
- Opah,
- Painted Moray,
- Piranha,
- Rainbow Wrasse,
- Shad,
- Siberian Sturgeon,
- Skate,
- Spoonhead Sculpin,
- Striped Perch,
- Sturgeon,
- Tunisian Barb,
- Walleye,
- Wolffish,
- Blue Marlin,
- Creaking Fish,
- Echo Eel.

Fish are linked to biomes, water types and separate fishing loot tables. Some have cooked variants.

## Advancements and trading

The food system has its own advancements for, among other things:

- cooking,
- preparing secret meals,
- fishing,
- catching every fish,
- preserving food,
- preparing specific curries, ramens and desserts.

Villager Cook/Butcher trades can offer custom dishes, recipes and fish.

## Simplification notes

Food is a large but mostly independent system. The least disruptive simplification would be to:

1. keep custom food under the `kleispack` namespace,
2. restore vanilla names and functions for ingredients,
3. reduce the use of spawn eggs as food,
4. keep selected meals such as curry, ramen, stroganoff and desserts,
5. decide separately later whether to keep the full custom fishing system.
