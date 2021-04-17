execute as @e[type=armor_stand,tag=redbanner] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #banners
execute as @e[type=armor_stand,tag=bluebanner] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #banners
scoreboard players reset 赤 bannercount
scoreboard players reset 青 bannercount
kill @e[type=armor_stand,tag=redbanner]
kill @e[type=armor_stand,tag=bluebanner]
kill @e[type=armor_stand,tag=redrespawn]
kill @e[type=armor_stand,tag=bluerespawn]