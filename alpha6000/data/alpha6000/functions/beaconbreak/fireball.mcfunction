execute as @a[scores={beaconfiredrop=1}] at @s run tag @s add beaconbreak_fire
execute as @a[tag=beaconbreak_fire] at @s run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:fire_charge"}},limit=1]
execute as @a[tag=beaconbreak_fire] at @s positioned ~ ~1.25 ~ run summon minecraft:fireball ^ ^ ^0.2 {Tags:["beaconfire"]}
execute as @e[tag=beaconfire] at @s positioned ~ ~-1.25 ~ run data modify entity @s Owner set from entity @p UUID
execute as @e[tag=beaconfire] at @s store result score @s beaconfireX run data get entity @s Pos[0] 1000000
execute as @e[tag=beaconfire] at @s store result score @s beaconfireY run data get entity @s Pos[1] 1000000
execute as @e[tag=beaconfire] at @s store result score @s beaconfireZ run data get entity @s Pos[2] 1000000
execute as @a[tag=beaconbreak_fire] at @s store result score @s beaconfireX run data get entity @s Pos[0] 1000000
execute as @a[tag=beaconbreak_fire] at @s store result score @s beaconfireY run data get entity @s Pos[1] 1000000
execute as @a[tag=beaconbreak_fire] at @s store result score @s beaconfireZ run data get entity @s Pos[2] 1000000
execute as @a[tag=beaconbreak_fire] run scoreboard players add @s beaconfireY 1250000
execute as @e[tag=beaconfire] at @s positioned ~ ~-1.25 ~ run scoreboard players operation @s beaconfireX -= @p beaconfireX
execute as @e[tag=beaconfire] at @s positioned ~ ~-1.25 ~ run scoreboard players operation @s beaconfireY -= @p beaconfireY
execute as @e[tag=beaconfire] at @s positioned ~ ~-1.25 ~ run scoreboard players operation @s beaconfireZ -= @p beaconfireZ
execute as @e[tag=beaconfire] store result entity @s power[0] double 0.000001 run scoreboard players get @s beaconfireX
execute as @e[tag=beaconfire] store result entity @s power[1] double 0.000001 run scoreboard players get @s beaconfireY
execute as @e[tag=beaconfire] store result entity @s power[2] double 0.000001 run scoreboard players get @s beaconfireZ
execute as @a[tag=beaconbreak_fire] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:tnt"}]}] run tag @s add beaconbreak_explosion
execute as @a[tag=beaconbreak_explosion] store result score @s beaconexppower run clear @s tnt 3
execute as @e[tag=beaconfire] store result score @s beaconexppower run data get entity @s ExplosionPower
execute as @e[tag=beaconfire] at @s positioned ~ ~-1.25 ~ run scoreboard players operation @s beaconexppower += @p[tag=beaconbreak_explosion] beaconexppower
execute as @e[tag=beaconfire] store result entity @s ExplosionPower int 1 run scoreboard players get @s beaconexppower
execute as @a[tag=beaconbreak_explosion] run tag @s remove beaconbreak_explosion
execute as @e[tag=beaconfire] run tag @s remove beaconfire
execute as @a[tag=beaconbreak_fire] at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.7
execute as @a[tag=beaconbreak_fire] run tag @s remove beaconbreak_fire
scoreboard players reset @a beaconexppower
scoreboard players reset @a beaconfiredrop
scoreboard players reset @a beaconfireX
scoreboard players reset @a beaconfireY
scoreboard players reset @a beaconfireZ