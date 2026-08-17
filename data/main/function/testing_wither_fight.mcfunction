#This system is not implemented, Im just trying to figure out a way to make the wither fight more fun
# execute at @p run execute if entity @n[type=wither,distance=..10] run execute at @p run execute unless block ^ ^ ^ air run tp @n[type=wither] ^ ^5 ^10
execute at @p run execute if entity @n[type=wither,distance=..10] run execute at @p run execute if block ^ ^ ^30 air run tp @n[type=wither] ^ ^ ^30
# execute at @p run execute if entity @n[type=wither,distance=..10] run execute as @e[type=wither] at @s rotated as @p run function main:backend/apply_motion
