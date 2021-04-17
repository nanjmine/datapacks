execute as @e[tag=gibbtrw2nd] at @s run setblock ~ ~ ~ air


say @a[tag=gibthis]の勝ち!



tag @e[tag=gibbtrw] remove gibspawn
tag @a[tag=gibthis] remove gibthis
execute in minecraft:pvp run gamemode creative @a[distance=0..]
scoreboard objectives remove gibbtrwseizon
scoreboard objectives remove gibbtrwdeath