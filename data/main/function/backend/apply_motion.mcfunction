#Derived from work by TimberForge https://www.youtube.com/watch?v=DaIvJwhcz8Q&t=164s&ab_channel=TimberForge
execute store result score @s motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^.1

execute store result score @s motion_x2 run data get entity @s Pos[0] 1000
execute store result score @s motion_y2 run data get entity @s Pos[1] 1000
execute store result score @s motion_z2 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.025 run scoreboard players operation @s motion_x2 -= @s motion_x1
execute store result entity @s Motion[1] double 0.025 run scoreboard players operation @s motion_y2 -= @s motion_y1
execute store result entity @s Motion[2] double 0.025 run scoreboard players operation @s motion_z2 -= @s motion_z1

tag @s remove motion_projectile