execute as @e[tag=beaconbreak_observe,team=apred] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] run tag @s add beaconbreak_break
execute as @e[tag=beaconbreak_observe,team=apred] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] if entity @a[scores={beaconbreak=1..}] run tellraw @a ["",{"text":"赤チームのビーコンが","bold":true,"color":"red"},{"selector":"@p[scores={beaconbreak=1..}]","bold":true},{"text":"によって破壊された!","bold":true,"color":"red"},{"text":"\n"},{"text":"これ以降リスポーンできない!","color":"red"}]
execute as @e[tag=beaconbreak_observe,team=apred] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] unless entity @a[scores={beaconbreak=1..}] run tellraw @a ["",{"text":"赤チームのビーコンが破壊された!","bold":true,"color":"red"},{"text":"\n"},{"text":"これ以降リスポーンできない!","color":"red"}]
execute as @e[tag=beaconbreak_observe,team=apred] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] at @e[tag=beaconbreak_end] run spawnpoint @a[team=apred] ~ ~ ~ 
execute as @e[tag=beaconbreak_observe,team=apred] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] as @a at @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.5 1
execute as @e[tag=beaconbreak_observe,team=apred] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] run tag @s add beaconbreak_broken

execute if entity @e[tag=beaconbreak_broken,team=apred] as @a[team=apred] if score @s beacondeath matches 1.. run tag @s add beaconbreak_death
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apred] run tellraw @a [{"text":"ファイナルキル!","bold":true,"color":"red"}]
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apred] run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 0.5 1
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apred] run gamemode spectator @s
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apred] run tag @s remove beaconbreak_death

#バグあり
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] run tellraw @a [{"text":"全滅!","bold":true,"color":"red"}]
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] as @a at @s run playsound minecraft:entity.ender_dragon.ambient player @s ~ ~ ~ 0.5 1
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] if score チーム数 beaconsurvive matches 4 at @e[tag=beaconbreak_equip,team=apblue] run tp @a[team=apred] ~ ~ ~
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run clear @a[team=apred]
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run gamemode adventure @a[team=apred]
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] run scoreboard players remove チーム数 beaconsurvive 1
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] run scoreboard players reset 赤チーム✔ beaconsurvive
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] run scoreboard players add 赤チーム✘ beaconsurvive 13
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run team join apblue @a[team=apred]
execute if entity @e[tag=beaconbreak_broken,team=apred] unless entity @a[team=apred,gamemode=adventure] if score チーム数 beaconsurvive matches 1..3 run team leave @a[team=apred]



execute if entity @a[team=apred] unless entity @a[team=apblue] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run say 赤の勝ち
execute if entity @a[team=apred] unless entity @a[team=apblue] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run title @a title [{"text":"赤の勝ち!","color":"red"}]
execute if entity @a[team=apred] unless entity @a[team=apblue] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run function alpha6000:end
execute if entity @a[team=apred] unless entity @a[team=apblue] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run setblock ~ ~-1 ~ air
execute if entity @a[team=apred] unless entity @a[team=apblue] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run setblock ~ ~1 ~ redstone_block
execute as @a[team=apred,gamemode=adventure] unless score @s beaconsurvive matches 12 run scoreboard players set @s beaconsurvive 12
execute as @a[team=apred,gamemode=spectator] unless score @s beaconsurvive matches -1 run scoreboard players set @s beaconsurvive -1
scoreboard players reset @a[team=apred] beaconbreak 
scoreboard players reset @a[team=apred] beacondeath