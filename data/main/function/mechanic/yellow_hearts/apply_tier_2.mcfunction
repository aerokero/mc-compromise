# +4 bonus hearts for 30 minutes (1800 ticks), via vanilla's own absorption level 1 (amplifier
# 1 = exactly 8 absorption points = 4 hearts). See apply_tier_1.mcfunction for why this uses the
# plain effect-give form - direct NBT writes to a player are always refused by the engine.
effect give @s minecraft:absorption 1800 1 true
