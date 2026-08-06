execute at @s run effect give @n[type=#minecraft:undead,distance=..24] minecraft:slowness 1 3 true
execute at @s run damage @n[type=#minecraft:undead,type=!wither,distance=..24] 19 minecraft:out_of_world
execute at @n[type=#minecraft:undead,type=!wither,distance=..12] run particle minecraft:soul_fire_flame ~ ~1.5 ~ .1 .3 .1 .02 1
execute at @s run damage @n[type=wither,distance=..12] 2 minecraft:out_of_world
execute at @n[type=wither,distance=..12] run particle minecraft:soul_fire_flame ~ ~2.5 ~ .5 .5 .5 .02 1
