# Experimental manual helper: teleports a nearby Wither 30 blocks forward when that position is air.
execute at @p run execute if entity @n[type=wither,distance=..10] run execute at @p run execute if block ^ ^ ^30 air run tp @n[type=wither] ^ ^ ^30
