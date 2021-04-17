execute as @e[tag=beaconbreak_observe,team=apgreen] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] run tag @s add beaconbreak_break
execute as @e[tag=beaconbreak_observe,team=apgreen] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] if entity @a[scores={beaconbreak=1..}] run tellraw @a ["",{"text":"緑チームのビーコンが","bold":true,"color":"green"},{"selector":"@p[scores={beaconbreak=1..}]","bold":true},{"text":"によって破壊された!","bold":true,"color":"green"},{"text":"\n"},{"text":"これ以降リスポーンできない!","color":"green"}]
execute as @e[tag=beaconbreak_observe,team=apgreen] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] unless entity @a[scores={beaconbreak=1..}] run tellraw @a ["",{"text":"緑チームのビーコンが破壊された!","bold":true,"color":"green"},{"text":"\n"},{"text":"これ以降リスポーンできない!","color":"green"}]
execute as @e[tag=beaconbreak_observe,team=apgreen] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] at @e[tag=beaconbreak_end] run spawnpoint @a[team=apgreen] ~ ~ ~
execute as @e[tag=beaconbreak_observe,team=apgreen] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] as @a at @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.5 1
execute as @e[tag=beaconbreak_observe,team=apgreen] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] run tag @s add beaconbreak_broken

execute if entity @e[tag=beaconbreak_broken,team=apgreen] as @a[team=apgreen] if score @s beacondeath matches 1.. run tag @s add beaconbreak_death
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apgreen] run tellraw @a [{"text":"ファイナルキル!","bold":true,"color":"green"}]
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apgreen] run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 0.5 1
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apgreen] run gamemode spectator @s
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apgreen] run tag @s remove beaconbreak_death

#バグあり
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] run tellraw @a [{"text":"全滅!","bold":true,"color":"green"}]
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] as @a at @s run playsound minecraft:entity.ender_dragon.ambient player @s ~ ~ ~ 0.5 1
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] if score チーム数 beaconsurvive matches 4 at @e[tag=beaconbreak_equip,team=apyellow] run tp @a[team=apgreen] ~ ~ ~
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run clear @a[team=apgreen]
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run gamemode adventure @a[team=apgreen]
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] run scoreboard players remove チーム数 beaconsurvive 1
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] run scoreboard players reset 緑チーム✔ beaconsurvive
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] run scoreboard players set 緑チーム✘ beaconsurvive 9
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run team join apyellow @a[team=apgreen]
execute if entity @e[tag=beaconbreak_broken,team=apgreen] unless entity @a[team=apgreen,gamemode=adventure] if score チーム数 beaconsurvive matches 1..3 run team leave @a[team=apgreen]



execute if entity @a[team=apgreen] unless entity @a[team=apyellow] unless entity @a[team=apred] unless entity @a[team=apred] run say 緑の勝ち
execute if entity @a[team=apgreen] unless entity @a[team=apyellow] unless entity @a[team=apred] unless entity @a[team=apred] run title @a title [{"text":"緑の勝ち!","color":"green"}]
execute if entity @a[team=apgreen] unless entity @a[team=apyellow] unless entity @a[team=apred] unless entity @a[team=apred] run function alpha6000:end
execute if entity @a[team=apgreen] unless entity @a[team=apyellow] unless entity @a[team=apred] unless entity @a[team=apred] run setblock ~ ~-1 ~ air
execute if entity @a[team=apgreen] unless entity @a[team=apyellow] unless entity @a[team=apred] unless entity @a[team=apred] run setblock ~ ~1 ~ redstone_block
execute as @a[team=apgreen,gamemode=adventure] unless score @s beaconsurvive matches 8 run scoreboard players set @s beaconsurvive 8
execute as @a[team=apgreen,gamemode=spectator] unless score @s beaconsurvive matches -3 run scoreboard players set @s beaconsurvive -3
scoreboard players reset @a[team=apgreen] beaconbreak 
scoreboard players reset @a[team=apgreen] beacondeath