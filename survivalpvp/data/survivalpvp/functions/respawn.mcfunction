scoreboard objectives add svdeathcount deathCount
execute as @a if score @s svdeathcount matches 1.. if entity @s[nbt={Health:20.0f}] run tag @s add death
execute as @a[team=dred] if entity @s[tag=death] run replaceitem entity @s armor.feet leather_boots{display:{color:16711680}} 1
execute as @a[team=dred] if entity @s[tag=death] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16711680}} 1
execute as @a[team=dred] if entity @s[tag=death] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16711680}} 1
execute as @a[team=dred] if entity @s[tag=death] run replaceitem entity @s armor.head minecraft:leather_helmet{display:{color:16711680}} 1
execute as @a[team=dblue] if entity @s[tag=death] run replaceitem entity @s armor.feet leather_boots{display:{color:255}} 1
execute as @a[team=dblue] if entity @s[tag=death] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:255}} 1
execute as @a[team=dblue] if entity @s[tag=death] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:255}} 1
execute as @a[team=dblue] if entity @s[tag=death] run replaceitem entity @s armor.head minecraft:leather_helmet{display:{color:255}} 1
execute as @a if entity @s[tag=death] run give @s minecraft:stone_sword
execute as @a if entity @s[tag=death] run give @s minecraft:stone_pickaxe
execute as @a if entity @s[tag=death] run scoreboard players reset @s svdeathcount
execute as @a if entity @s[tag=death] run tag @s remove death
