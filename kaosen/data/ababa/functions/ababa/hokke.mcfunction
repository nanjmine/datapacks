scoreboard objectives add villagedl minecraft.custom:minecraft.damage_dealt
scoreboard objectives add vilhealth dummy
scoreboard objectives add hokketen dummy

execute as @e[tag=hokke,sort=random,limit=1] at @s unless entity @e[tag=hokkevi] run summon villager ~ ~ ~ {NoAI:1,Tags:["hokkevi"]}
execute as @e[tag=hokkevi] at @s facing entity @e[tag=viface,limit=1] eyes run tp @s ~ ~ ~ ~ 0
