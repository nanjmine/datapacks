execute at @e[limit=1,tag=bluerespawn] as @a[team=dred,distance=..32] if score @s svdmg matches 1.. run tp @s @e[tag=redrespawn,limit=1]
execute at @e[limit=1,tag=redrespawn] as @a[team=dblue,distance=..32] if score @s svdmg matches 1.. run tp @s @e[tag=bluerespawn,limit=1]
execute as @a if score @s svdmg matches 1.. run scoreboard players reset @s svdmg