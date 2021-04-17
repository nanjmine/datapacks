execute as @e[tag=beaconbreak_observe,team=apyellow] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] run tag @s add beaconbreak_break
execute as @e[tag=beaconbreak_observe,team=apyellow] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] if entity @a[scores={beaconbreak=1..}] run tellraw @a ["",{"text":"黄チームのビーコンが","bold":true,"color":"yellow"},{"selector":"@p[scores={beaconbreak=1..}]","bold":true},{"text":"によって破壊された!","bold":true,"color":"yellow"},{"text":"\n"},{"text":"これ以降リスポーンできない!","color":"yellow"}]
execute as @e[tag=beaconbreak_observe,team=apyellow] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] unless entity @a[scores={beaconbreak=1..}] run tellraw @a ["",{"text":"黄チームのビーコンが破壊された!","bold":true,"color":"yellow"},{"text":"\n"},{"text":"これ以降リスポーンできない!","color":"yellow"}]
execute as @e[tag=beaconbreak_observe,team=apyellow] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] at @e[tag=beaconbreak_end] run spawnpoint @a[team=apyellow] ~ ~ ~
execute as @e[tag=beaconbreak_observe,team=apyellow] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] as @a at @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.5 1
execute as @e[tag=beaconbreak_observe,team=apyellow] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] run tag @s add beaconbreak_broken

execute if entity @e[tag=beaconbreak_broken,team=apyellow] as @a[team=apyellow] if score @s beacondeath matches 1.. run tag @s add beaconbreak_death
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apyellow] run tellraw @a [{"text":"ファイナルキル!","bold":true,"color":"yellow"}]
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apyellow] run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 0.5 1
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apyellow] run gamemode spectator @s
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apyellow] run tag @s remove beaconbreak_death

#バグあり
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] run tellraw @a [{"text":"全滅!","bold":true,"color":"yellow"}]
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] as @a at @s run playsound minecraft:entity.ender_dragon.ambient player @s ~ ~ ~ 0.5 1
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] if score チーム数 beaconsurvive matches 4 at @e[tag=beaconbreak_equip,team=apgreen] run tp @a[team=apyellow] ~ ~ ~
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run clear @a[team=apyellow]
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run gamemode adventure @a[team=apyellow]
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] run scoreboard players remove チーム数 beaconsurvive 1
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] run scoreboard players reset 黄チーム✔ beaconsurvive
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] run scoreboard players set 黄チーム✘ beaconsurvive 7
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run team join apgreen @a[team=apyellow]
execute if entity @e[tag=beaconbreak_broken,team=apyellow] unless entity @a[team=apyellow,gamemode=adventure] if score チーム数 beaconsurvive matches 1..3 run team leave @a[team=apyellow]



execute if entity @a[team=apyellow] unless entity @a[team=apgreen] unless entity @a[team=apblue] unless entity @a[team=apred] run say 黄の勝ち
execute if entity @a[team=apyellow] unless entity @a[team=apgreen] unless entity @a[team=apblue] unless entity @a[team=apred] run title @a title [{"text":"黄の勝ち!","color":"yellow"}]
execute if entity @a[team=apyellow] unless entity @a[team=apgreen] unless entity @a[team=apblue] unless entity @a[team=apred] run function alpha6000:end
execute if entity @a[team=apyellow] unless entity @a[team=apgreen] unless entity @a[team=apblue] unless entity @a[team=apred] run setblock ~ ~-1 ~ air
execute if entity @a[team=apyellow] unless entity @a[team=apgreen] unless entity @a[team=apblue] unless entity @a[team=apred] run setblock ~ ~1 ~ redstone_block
execute as @a[team=apyellow,gamemode=adventure] unless score @s beaconsurvive matches 6 run scoreboard players set @s beaconsurvive 6
execute as @a[team=apyellow,gamemode=spectator] unless score @s beaconsurvive matches -4 run scoreboard players set @s beaconsurvive -4
scoreboard players reset @a[team=apyellow] beaconbreak 
scoreboard players reset @a[team=apyellow] beacondeath