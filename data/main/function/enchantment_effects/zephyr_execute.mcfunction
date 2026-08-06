execute if score @p sneaking > 0 sneaking run particle minecraft:gust ~ ~0.1 ~ 0.1 0 0.1 0 1
execute if score @p sneaking >= 45 sneaking run particle minecraft:poof ~ ~ ~ .1 .1 .1 .5 50
execute if score @p sneaking >= 45 sneaking run effect give @p minecraft:levitation 1 12
playsound minecraft:entity.wind_charge.wind_burst hostile @p ~ ~ ~ 2
scoreboard players set @p sneaking 0