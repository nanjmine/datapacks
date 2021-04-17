tag @e[tag=gibbtrw] remove gibspawn
tag @a[tag=gibthis] remove gibthis

function ababa:ababa/gibbtrwspawn

#プレイヤーリセット
team leave @a[tag=gibthis]
gamemode adventure @a[tag=gibthis]
clear @a[tag=gibthis]
effect give @a[tag=gibthis] saturation 10 20 true
effect give @a[tag=gibthis] instant_health 100 25 true
spawnpoint @a[tag=gibthis] 8 4 -958
team join gibbtrw @a[tag=gibthis]
#樽中身リセット
execute as @e[tag=barrelup] at @s run setblock ~ ~ ~ barrel[facing=up]{LootTable:"ababa:gib_table"} destroy
execute as @e[tag=barreldown] at @s run setblock ~ ~ ~ barrel[facing=down]{LootTable:"ababa:gib_table"} destroy
execute as @e[tag=barrelnorth] at @s run setblock ~ ~ ~ barrel[facing=north]{LootTable:"ababa:gib_table"} destroy
execute as @e[tag=barreleast] at @s run setblock ~ ~ ~ barrel[facing=east]{LootTable:"ababa:gib_table"} destroy
execute as @e[tag=barrelwest] at @s run setblock ~ ~ ~ barrel[facing=west]{LootTable:"ababa:gib_table"} destroy
execute as @e[tag=barrelsouth] at @s run setblock ~ ~ ~ barrel[facing=south]{LootTable:"ababa:gib_table"} destroy
execute in minecraft:pvp run kill @e[type=item,distance=0..]



#開始合図
scoreboard objectives add gibbtrwseizon playerKillCount "生存者"
scoreboard players set @a[tag=gibthis] gibbtrwseizon 0
scoreboard objectives setdisplay sidebar gibbtrwseizon
scoreboard objectives add gibbtrwdeath deathCount


execute as @e[tag=gibbtrw2nd] at @s run setblock ~ ~ ~ redstone_block