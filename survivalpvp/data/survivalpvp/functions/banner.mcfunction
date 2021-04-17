execute as @e[type=armor_stand,tag=redbanner,tag=!count,nbt={OnGround:1b}] at @s run scoreboard players add 赤 bannercount 1
execute as @e[type=armor_stand,tag=bluebanner,tag=!count,nbt={OnGround:1b}] at @s run scoreboard players add 青 bannercount 1

execute as @e[type=armor_stand,tag=redbanner,tag=!count,nbt={OnGround:1b}] at @s run setblock ~ ~ ~ red_banner[rotation=0] destroy
execute as @e[type=armor_stand,tag=bluebanner,tag=!count,nbt={OnGround:1b}] at @s run setblock ~ ~ ~ blue_banner[rotation=8] destroy

execute as @e[type=armor_stand,tag=redbanner,tag=!count,nbt={OnGround:1b}] at @s run tag @s add count
execute as @e[type=armor_stand,tag=bluebanner,tag=!count,nbt={OnGround:1b}] at @s run tag @s add count
execute as @e[type=armor_stand,tag=count] at @s run data merge entity @s {Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=count] at @s unless block ~ ~ ~ #banners run tag @s add count2

execute as @e[type=armor_stand,tag=count,tag=redbanner] at @s run fill ~2 ~2 ~2 ~-2 ~ ~-2 air replace obsidian
execute as @e[type=armor_stand,tag=count,tag=redbanner] at @s run fill ~2 ~-1 ~2 ~-2 ~-2 ~-2 stone replace obsidian
execute as @e[type=armor_stand,tag=count,tag=bluebanner] at @s run fill ~2 ~2 ~2 ~-2 ~ ~-2 air replace obsidian
execute as @e[type=armor_stand,tag=count,tag=bluebanner] at @s run fill ~2 ~-1 ~2 ~-2 ~-2 ~-2 stone replace obsidian

execute as @e[type=armor_stand,tag=count2,tag=redbanner] run scoreboard players remove 赤 bannercount 1
execute as @e[type=armor_stand,tag=count2,tag=bluebanner] run scoreboard players remove 青 bannercount 1
execute as @e[type=armor_stand,tag=count2,tag=redbanner,limit=1] run tellraw @a  ["",{"text":"赤の旗が破壊された!","color":"red"},{"text":"(残り"},{"score":{"name":"赤","objective":"bannercount"}},{"text":"本)"}]
execute as @e[type=armor_stand,tag=count2,tag=bluebanner,limit=1] run tellraw @a ["",{"text":"青の旗が破壊された!","color":"aqua"},{"text":"(残り"},{"score":{"name":"青","objective":"bannercount"}},{"text":"本)"}]
execute as @e[type=armor_stand,tag=count2] run kill @s

execute as @e[type=armor_stand,tag=redrespawn] at @s run fill ~2 ~2 ~2 ~-2 ~ ~-2 air replace lava
execute as @e[type=armor_stand,tag=redrespawn] at @s run fill ~2 ~-1 ~2 ~-2 ~-2 ~-2 stone replace lava
execute as @e[type=armor_stand,tag=bluerespawn] at @s run fill ~2 ~2 ~2 ~-2 ~ ~-2 air replace lava
execute as @e[type=armor_stand,tag=bluerespawn] at @s run fill ~2 ~-1 ~2 ~-2 ~-2 ~-2 stone replace lava
