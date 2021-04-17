execute as @a if score @s ap_mm_deathcount matches 1.. run tag @s add ap_mm_death
execute as @a[tag=ap_mm_death] at @s run spawnpoint @s ~ ~ ~



execute as @a[tag=ap_mm_death] at @s run tag @s add ap_mm_dead
execute as @a[tag=ap_mm_dead] at @s run gamemode spectator @s