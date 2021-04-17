#アマスタ:hokkethis, 村人:hokekvi 
scoreboard objectives add hokkemotionx dummy
scoreboard objectives add hokkemotionz dummy



#殴って方向転換
execute as @e[tag=hokkevi,limit=1] store result score @s vilhealth run data get entity @s Health
execute as @e[tag=hokkevi,limit=1] unless score @s vilhealth matches 20 run tag @s add hokkeon
execute as @e[tag=hokkevi,limit=1] at @s unless score @s vilhealth matches 20 if entity @a[scores={villagedl=1..}] rotated as @p[scores={villagedl=1..}] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=hokkevi,limit=1] unless score @s vilhealth matches 20 run data merge entity @s {Health:20f}




#直進


execute as @e[tag=hokkevi,tag=hokkeon,limit=1] at @s run tp @s ^ ^ ^0.6

#反射



scoreboard objectives add rlaiy_rotation dummy
execute as @e[tag=hokkevi,limit=1] at @s store result score murabito rlaiy_rotation run data get entity @s Rotation[0] 100
scoreboard players set source rlaiy_rotation 18000
scoreboard players set -source rlaiy_rotation -18000
execute as @e[tag=hokkevi,limit=1] at @s if block ^ ^ ^0.3 minecraft:bedrock if score murabito rlaiy_rotation matches 0.. run scoreboard players operation source rlaiy_rotation -= murabito rlaiy_rotation
execute as @e[tag=hokkevi,limit=1] at @s if block ^ ^ ^0.3 minecraft:bedrock if score murabito rlaiy_rotation matches ..0 run scoreboard players operation -source rlaiy_rotation -= murabito rlaiy_rotation
execute as @e[tag=hokkevi,limit=1] at @s if block ^ ^ ^0.3 minecraft:bedrock if score murabito rlaiy_rotation matches 0.. run scoreboard players operation murabito rlaiy_rotation = source rlaiy_rotation
execute as @e[tag=hokkevi,limit=1] at @s if block ^ ^ ^0.3 minecraft:bedrock if score murabito rlaiy_rotation matches ..0 run scoreboard players operation murabito rlaiy_rotation = -source rlaiy_rotation
execute store result entity @e[tag=hokkevi,limit=1] Rotation[0] float 0.01 run scoreboard players get murabito rlaiy_rotation
scoreboard players set source rlaiy_rotation 18000
execute as @e[tag=hokkevi,limit=1] at @s if block ^ ^ ^0.3 minecraft:bedrock store result score murabito rlaiy_rotation run data get entity @s Rotation[0] 100
execute as @e[tag=hokkevi,limit=1] at @s if block ^ ^ ^0.3 minecraft:bedrock run scoreboard players operation murabito rlaiy_rotation -= source rlaiy_rotation
execute store result entity @e[tag=hokkevi,limit=1] Rotation[0] float 0.01 run scoreboard players get murabito rlaiy_rotation
scoreboard objectives remove rlaiy_rotation



scoreboard objectives remove hokkemotionx
scoreboard objectives remove hokkemotionz

scoreboard players reset @a villagedl
