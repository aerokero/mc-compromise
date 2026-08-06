execute at @s run effect give @n[type=#minecraft:undead,distance=..8] minecraft:slowness 1 1 true
execute at @s run damage @n[type=#minecraft:undead,type=!wither,distance=..8] 1 minecraft:out_of_world
execute at @n[type=#minecraft:undead,type=!wither,distance=..8] run particle minecraft:soul_fire_flame ~ ~1.5 ~ .1 .3 .1 .02 1
execute at @s run damage @n[type=wither,distance=..8] 1 minecraft:out_of_world
execute at @n[type=wither,distance=..8] run particle minecraft:soul_fire_flame ~ ~2.5 ~ .5 .5 .5 .02 1
