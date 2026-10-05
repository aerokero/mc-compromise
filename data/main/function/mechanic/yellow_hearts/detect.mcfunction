# Detect "just ate a yellow-heart food" via a short-lived minecraft:luck effect instead of an
# advancement item-component match (which proved unreliable for minecraft:consume_item + custom_data
# in testing). Every compromise food's on_consume_effects now also grants minecraft:luck with
# amplifier = tier_index (0..3) and duration 2 ticks, purely as an internal signal (no gameplay
# effect of its own worth mentioning at this amplifier/duration).
#
# NBT field is `active_effects` (lowercase snake_case), NOT the old `ActiveEffects` - confirmed
# against this pack's own working usage in main:enchantment_effects/anemos.mcfunction and
# regeneration.mcfunction. An earlier version of this file used the wrong (old) casing, which
# silently never matched, and `execute store result score` writes 0 on a failed read instead of
# leaving the score untouched - so guard every read behind `execute if entity @s[nbt=...]` first,
# never rely on "defaults to -1" assumptions about what a failed data get leaves behind.
scoreboard players set @a yellowHeartsSignal -1
execute as @a[nbt={active_effects:[{id:"minecraft:luck"}]}] at @s store result score @s yellowHeartsSignal run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier

execute as @a[scores={yellowHeartsSignal=0}] at @s run function main:mechanic/yellow_hearts/apply_tier_1
execute as @a[scores={yellowHeartsSignal=1}] at @s run function main:mechanic/yellow_hearts/apply_tier_2
execute as @a[scores={yellowHeartsSignal=2}] at @s run function main:mechanic/yellow_hearts/apply_tier_3
execute as @a[scores={yellowHeartsSignal=3}] at @s run function main:mechanic/yellow_hearts/apply_tier_4

execute as @a[scores={yellowHeartsSignal=0..3}] at @s run effect clear @s minecraft:luck
