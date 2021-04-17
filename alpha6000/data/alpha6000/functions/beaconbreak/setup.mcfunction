execute as @e[tag=beaconbreak] run data merge entity @s {Glowing:0b,Marker:1b,Invisible:1b}
tp @a[team=apred] @e[type=armor_stand,sort=nearest,limit=1,team=apred,tag=beaconbreak_equip]
tp @a[team=apblue] @e[type=armor_stand,sort=nearest,limit=1,team=apblue,tag=beaconbreak_equip]
tp @a[team=apgreen] @e[type=armor_stand,sort=nearest,limit=1,team=apgreen,tag=beaconbreak_equip]
tp @a[team=apyellow] @e[type=armor_stand,sort=nearest,limit=1,team=apyellow,tag=beaconbreak_equip]
tag @a[team=!] add beaconbreak
gamemode adventure @a[team=apred]
gamemode adventure @a[team=apblue]
gamemode adventure @a[team=apgreen]
gamemode adventure @a[team=apyellow]
clear @a[team=apred]
clear @a[team=apblue]
clear @a[team=apgreen]
clear @a[team=apyellow]
title @a reset
effect give @a minecraft:instant_health 20 0 true
effect give @a minecraft:saturation 20 0 true
effect give @a minecraft:resistance 10 4 true
title @a title [{"text":"開始!"}]
scoreboard objectives add beaconbreak mined:beacon
scoreboard objectives add beaconsurvive dummy "チーム"
scoreboard objectives add beacondeath deathCount
team join apred 赤チーム✔
team join apblue 青チーム✔
team join apgreen 緑チーム✔
team join apyellow 黄チーム✔
team join apred 赤チーム✘
team join apblue 青チーム✘
team join apgreen 緑チーム✘
team join apyellow 黄チーム✘
scoreboard players set ==生存者== beaconsurvive 14
scoreboard players set 赤チーム✔ beaconsurvive 13
scoreboard players set @a[team=apred] beaconsurvive 12
scoreboard players set 青チーム✔ beaconsurvive 11
scoreboard players set @a[team=apblue] beaconsurvive 10
scoreboard players set 緑チーム✔ beaconsurvive 9
scoreboard players set @a[team=apgreen] beaconsurvive 8
scoreboard players set 黄チーム✔ beaconsurvive 7
scoreboard players set @a[team=apyellow] beaconsurvive 6
scoreboard players set ========== beaconsurvive 5
execute as @p[team=apred] run scoreboard players add チーム数 beaconsurvive 1
execute as @p[team=apblue] run scoreboard players add チーム数 beaconsurvive 1
execute as @p[team=apgreen] run scoreboard players add チーム数 beaconsurvive 1
execute as @p[team=apyellow] run scoreboard players add チーム数 beaconsurvive 1
scoreboard players set ==死亡者== beaconsurvive 0
scoreboard objectives setdisplay sidebar beaconsurvive
scoreboard objectives add beaconfiredrop dropped:fire_charge
scoreboard objectives add beaconfireX dummy
scoreboard objectives add beaconfireY dummy
scoreboard objectives add beaconfireZ dummy
scoreboard objectives add beaconexppower dummy

execute as @e[type=armor_stand,tag=beaconbreak_observe] at @s run setblock ~ ~1 ~ beacon
execute as @e[type=armor_stand,tag=beaconbreak_observe] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 iron_block
execute as @e[type=armor_stand,tag=beaconbreak_observe,team=apred] at @s run setblock ~ ~2 ~ red_stained_glass_pane
execute as @e[type=armor_stand,tag=beaconbreak_observe,team=apblue] at @s run setblock ~ ~2 ~ blue_stained_glass_pane
execute as @e[type=armor_stand,tag=beaconbreak_observe,team=apgreen] at @s run setblock ~ ~2 ~ green_stained_glass_pane
execute as @e[type=armor_stand,tag=beaconbreak_observe,team=apyellow] at @s run setblock ~ ~2 ~ yellow_stained_glass_pane
execute as @e[type=minecraft:armor_stand,tag=beaconbreak_fill] at @s run fill ~ ~ ~ ~15 ~63 ~15 air replace #alpha6000:red_blocks
execute as @e[type=minecraft:armor_stand,tag=beaconbreak_fill] at @s run fill ~ ~ ~ ~15 ~63 ~15 air replace #alpha6000:blue_blocks
execute as @e[type=minecraft:armor_stand,tag=beaconbreak_fill] at @s run fill ~ ~ ~ ~15 ~63 ~15 air replace #alpha6000:green_blocks
execute as @e[type=minecraft:armor_stand,tag=beaconbreak_fill] at @s run fill ~ ~ ~ ~15 ~63 ~15 air replace #alpha6000:yellow_blocks
execute as @e[type=minecraft:armor_stand,tag=beaconbreak_fill] at @s run fill ~ ~ ~ ~15 ~63 ~15 air replace tnt
execute as @e[type=minecraft:armor_stand,tag=beaconbreak_fill] at @s run fill ~ ~ ~ ~15 ~63 ~15 air replace fire