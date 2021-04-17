gamemode spectator @a[tag=gibthis,scores={gibbtrwdeath=1..}]
scoreboard players reset @a[tag=gibthis,gamemode=!adventure] gibbtrwseizon
tag @a[tag=gibthis,gamemode=!adventure] remove gibthis
execute as @a[tag=gibthis] run scoreboard players add 生存者 gibbtrwdeath 1
execute if score 生存者 gibbtrwdeath matches ..1 run function ababa:ababa/gibbtrwfin
scoreboard players reset 生存者 gibbtrwdeath