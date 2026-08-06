execute at @p run execute at @n[type=#minecraft:undead,distance=..24] unless entity @n[type=wither,distance=..16] run particle minecraft:soul_fire_flame ~ ~1.5 ~ .25 .5 .25 .05 5
execute at @p run execute at @n[type=wither,distance=..24] run particle minecraft:soul_fire_flame ~ ~2.5 ~ 1 1 1 .5 10
execute at @p run damage @n[type=#minecraft:undead,distance=..24] 10 minecraft:out_of_world