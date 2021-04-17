execute if entity @e[tag=runup] as @e[tag=runrun3] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["runrun"],NoGravity:1,Marker:1}
execute if entity @e[tag=runup] as @e[tag=runrun3] at @s run tp @s ~ ~1 ~
execute as @e[tag=runrun2,tag=runup] at @s run tp @s ~ ~1 ~
execute as @e[tag=runrun2,tag=runup] at @s if block ~ ~ ~ minecraft:command_block run kill @e[tag=runrun2]



execute unless entity @e[tag=runrun2] run kill @e[tag=runrun3]
execute as @e[tag=runrun2,tag=!runup] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["runrun3"],NoGravity:1,Marker:1,Invisible:1}
execute as @e[tag=runrun2,tag=!runup] at @s if block ~ ~ ~ minecraft:command_block run tag @s add runup
execute as @e[tag=runrun2,tag=!runup] at @s run tp @s ~1 ~ ~





#以下スキャンするブロック
execute as @e[tag=runrun] at @s if block ~ ~ ~ minecraft:barrel[facing=down] run summon minecraft:armor_stand ~ ~ ~ {Tags:["barreldown","gibbarrel"],NoGravity:1,Marker:1,Invisible:1}
execute as @e[tag=runrun] at @s if block ~ ~ ~ minecraft:barrel[facing=up] run summon minecraft:armor_stand ~ ~ ~ {Tags:["barrelup","gibbarrel"],NoGravity:1,Marker:1,Invisible:1}
execute as @e[tag=runrun] at @s if block ~ ~ ~ minecraft:barrel[facing=north] run summon minecraft:armor_stand ~ ~ ~ {Tags:["barrelnorth","gibbarrel"],NoGravity:1,Marker:1,Invisible:1}
execute as @e[tag=runrun] at @s if block ~ ~ ~ minecraft:barrel[facing=east] run summon minecraft:armor_stand ~ ~ ~ {Tags:["barreleast","gibbarrel"],NoGravity:1,Marker:1,Invisible:1}
execute as @e[tag=runrun] at @s if block ~ ~ ~ minecraft:barrel[facing=west] run summon minecraft:armor_stand ~ ~ ~ {Tags:["barrelwest","gibbarrel"],NoGravity:1,Marker:1,Invisible:1}
execute as @e[tag=runrun] at @s if block ~ ~ ~ minecraft:barrel[facing=south] run summon minecraft:armor_stand ~ ~ ~ {Tags:["barrelsouth","gibbarrel"],NoGravity:1,Marker:1,Invisible:1}
execute unless entity @e[tag=runrun2] unless entity @e[tag=runrun3] as @e[tag=runrun] at @s run tp @s ~ ~ ~1
execute unless entity @e[tag=runrun2] unless entity @e[tag=runrun3] as @e[tag=runrun] at @s if block ~ ~1 ~ minecraft:command_block run kill @e[tag=runrun]