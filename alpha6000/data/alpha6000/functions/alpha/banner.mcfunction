execute as @e[type=armor_stand,tag=redbanner,tag=!count] at @s run scoreboard players add 赤 bannercount 1
execute as @e[type=armor_stand,tag=bluebanner,tag=!count] at @s run scoreboard players add 青 bannercount 1

execute as @e[type=armor_stand,tag=redbanner,tag=!count] at @s run tag @s add count
execute as @e[type=armor_stand,tag=bluebanner,tag=!count] at @s run tag @s add count

execute as @e[type=armor_stand,tag=count,tag=redbanner] at @s unless block ~ ~ ~ #banners run tag @s add count2
execute as @e[type=armor_stand,tag=count2,tag=redbanner] run scoreboard players remove 赤 bannercount 1
execute as @e[type=armor_stand,tag=count2,tag=bluebanner] run scoreboard players remove 青 bannercount 1
execute as @e[type=armor_stand,tag=count2,tag=redbanner,limit=1] run tellraw @a  ["",{"text":"赤の旗が破壊された!","color":"red"},{"text":"(残り"},{"score":{"name":"赤","objective":"bannercount"}},{"text":"本)"}]
execute as @e[type=armor_stand,tag=count2,tag=bluebanner,limit=1] run tellraw @a ["",{"text":"青の旗が破壊された!","color":"aqua"},{"text":"(残り"},{"score":{"name":"青","objective":"bannercount"}},{"text":"本)"}]
execute as @e[type=armor_stand,tag=count2] run kill @s
