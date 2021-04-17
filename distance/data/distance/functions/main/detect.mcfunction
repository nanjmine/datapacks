scoreboard objectives add distance dummy
scoreboard players set dummy distance 2
summon armor_stand ~ ~ ~ {Tags:["atA"],Marker:true,NoGravity:1,Invisible:1b}
execute as @e[tag=atA] at @s facing entity @e[tag=abpmid,limit=1,sort=nearest] feet run tp @s ^ ^ ^ ~ ~
execute as @e[tag=atA] at @s unless entity @e[tag=abpmid,distance=..0.25] run function distance:main/tp
scoreboard players operation @s pumatax = @e[tag=atA] distance
#tellraw @p [{"text": "距離は"},{"score":{"name": "@e[tag=atA,limit=1]","objective": "distance"}},{"text": "/2[m]±0.25m"}]
kill @e[tag=atA]

scoreboard objectives remove distance