tp @s ^ ^ ^0.5
scoreboard players add @s distance 1
execute at @s unless entity @e[tag=abpmid,distance=..0.25] run function distance:main/tp
