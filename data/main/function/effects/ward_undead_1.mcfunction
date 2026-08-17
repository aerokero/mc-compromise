execute at @s run effect give @e[type=#minecraft:undead,distance=..14] minecraft:slowness 2 0 true
execute at @p run execute at @n[type=#minecraft:undead,distance=..14] unless entity @n[type=wither,distance=..14] run particle minecraft:soul_fire_flame ~ ~1.5 ~ .25 .5 .25 .05 2
execute at @p run execute at @n[type=wither,distance=..14] run particle minecraft:soul_fire_flame ~ ~2.5 ~ 1 1 1 .5 2
execute at @p run execute at @n[type=#minecraft:undead,distance=..14] unless entity @n[type=wither,distance=..14] run damage @n[type=#minecraft:undead,distance=..14] 2 minecraft:out_of_world
execute at @p run execute at @n[type=wither,distance=..14] run damage @n[type=#minecraft:undead,distance=..14] 1 minecraft:out_of_world