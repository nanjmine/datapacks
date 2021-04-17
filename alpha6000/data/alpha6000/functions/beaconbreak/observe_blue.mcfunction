execute as @e[tag=beaconbreak_observe,team=apblue] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] run tag @s add beaconbreak_break
execute as @e[tag=beaconbreak_observe,team=apblue] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] if entity @a[scores={beaconbreak=1..}] run tellraw @a ["",{"text":"青チームのビーコンが","bold":true,"color":"aqua"},{"selector":"@p[scores={beaconbreak=1..}]","bold":true},{"text":"によって破壊された!","bold":true,"color":"aqua"},{"text":"\n"},{"text":"これ以降リスポーンできない!","color":"aqua"}]
execute as @e[tag=beaconbreak_observe,team=apblue] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] unless entity @a[scores={beaconbreak=1..}] run tellraw @a ["",{"text":"青チームのビーコンが破壊された!","bold":true,"color":"aqua"},{"text":"\n"},{"text":"これ以降リスポーンできない!","color":"aqua"}]
execute as @e[tag=beaconbreak_observe,team=apblue] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] at @e[tag=beaconbreak_end] run spawnpoint @a[team=apblue] ~ ~ ~
execute as @e[tag=beaconbreak_observe,team=apblue] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] as @a at @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.5 1
execute as @e[tag=beaconbreak_observe,team=apblue] at @s unless block ~ ~1 ~ beacon if entity @s[tag=!beaconbreak_broken] run tag @s add beaconbreak_broken

execute if entity @e[tag=beaconbreak_broken,team=apblue] as @a[team=apblue] if score @s beacondeath matches 1.. run tag @s add beaconbreak_death
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apblue] run tellraw @a [{"text":"ファイナルキル!","bold":true,"color":"aqua"}]
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apblue] run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 0.5 1
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apblue] run gamemode spectator @s
execute if entity @a[tag=beaconbreak_death] as @a[tag=beaconbreak_death,team=apblue] run tag @s remove beaconbreak_death

#バグあり
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] run tellraw @a [{"text":"全滅!","bold":true,"color":"aqua"}]
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] as @a at @s run playsound minecraft:entity.ender_dragon.ambient player @s ~ ~ ~ 0.5 1
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] if score チーム数 beaconsurvive matches 4 at @e[tag=beaconbreak_equip,team=apred] run tp @a[team=apblue] ~ ~ ~
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run clear @a[team=apblue]
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run gamemode adventure @a[team=apblue]
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] run scoreboard players remove チーム数 beaconsurvive 1
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] run scoreboard players reset 青チーム✔ beaconsurvive
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] run scoreboard players add 青チーム✘ beaconsurvive 11
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] if score チーム数 beaconsurvive matches 4 run team join apred @a[team=apblue]
execute if entity @e[tag=beaconbreak_broken,team=apblue] unless entity @a[team=apblue,gamemode=adventure] if score チーム数 beaconsurvive matches 1..3 run team leave @a[team=apblue]



execute if entity @a[team=apblue] unless entity @a[team=apred] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run say 青の勝ち
execute if entity @a[team=apblue] unless entity @a[team=apred] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run title @a title [{"text":"青の勝ち!","color":"aqua"}]
execute if entity @a[team=apblue] unless entity @a[team=apred] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run function alpha6000:end
execute if entity @a[team=apblue] unless entity @a[team=apred] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run setblock ~ ~-1 ~ air
execute if entity @a[team=apblue] unless entity @a[team=apred] unless entity @a[team=apgreen] unless entity @a[team=apyellow] run setblock ~ ~1 ~ redstone_block
execute as @a[team=apblue,gamemode=adventure] unless score @s beaconsurvive matches 10 run scoreboard players set @s beaconsurvive 10
execute as @a[team=apblue,gamemode=spectator] unless score @s beaconsurvive matches -2 run scoreboard players set @s beaconsurvive -2
scoreboard players reset @a[team=apblue] beaconbreak 
scoreboard players reset @a[team=apblue] beacondeath