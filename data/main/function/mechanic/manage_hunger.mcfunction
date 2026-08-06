execute at @a if score @p Hunger matches 10.. run effect give @p minecraft:hunger 1 255 true
execute at @a if score @p Hunger matches ..6 run effect give @p minecraft:saturation 1 1 true
# execute at @a run execute if score @p Hunger matches 20 run title @p actionbar {"text":"You cannot eat right now","color":"red"}