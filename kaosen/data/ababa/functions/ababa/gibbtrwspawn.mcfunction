#先にこのコマンドを実行しとく
#tag @e[tag=gibbtrw] remove gibspawn

#pvp内の観戦以外の人を被りなしランダムスポン
#参加者にgibthis, gibbtrwアマスタにgibspawnを付与

execute in minecraft:pvp run tag @r[gamemode=!spectator,distance=0..,limit=1,tag=!gibthis] add gibthis
execute as @a[tag=gibthis] at @s unless entity @e[tag=gibbtrw,distance=..1] run tp @e[tag=gibbtrw,tag=!gibspawn,sort=random,limit=1]
execute as @a[tag=gibthis] at @s if entity @e[tag=gibbtrw,tag=!gibspawn,distance=..1] run tag @e[tag=gibbtrw,tag=!gibspawn,distance=..1] add gibspawn



execute in minecraft:pvp if entity @a[gamemode=!spectator,distance=0..,tag=!gibthis] run function ababa:ababa/gibbtrwspawn