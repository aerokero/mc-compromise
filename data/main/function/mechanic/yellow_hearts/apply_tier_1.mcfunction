# +2 bonus hearts for 30 minutes (1800 ticks), via vanilla's own absorption level 0 (amplifier
# 0 = exactly 4 absorption points = 2 hearts).
#
# IMPORTANT: Minecraft refuses ALL direct NBT writes to a living player entity ("Unable to modify
# player data" - confirmed via /data merge entity @s in-game; this is a fundamental, long-standing
# engine restriction, not something specific to this game version). That means AbsorptionAmount
# (or any other field) can NEVER be force-written on a player via `data merge`/`execute store
# result entity`, no matter the type (int/float) used - two earlier attempts at this both silently
# failed for that reason. The ONLY legal way to grant a player absorption is the plain
# `effect give ... <amplifier>` form (see main:enchantment_effects/divinity.mcfunction for another
# user of this exact pattern), which only produces the vanilla amplifier tiers: 4/8/12/16
# absorption points per amplifier 0/1/2/3 (i.e. 2/4/6/8 hearts) - arbitrary odd values like 1 or 3
# bonus hearts are not achievable for a player, full stop.
effect give @s minecraft:absorption 1800 0 true
