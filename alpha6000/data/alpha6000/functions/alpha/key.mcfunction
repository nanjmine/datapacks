execute as @e[type=minecraft:armor_stand,distance=..1000,tag=opendoor] at @s if block ~ ~ ~ minecraft:iron_door[half=lower,open=false,facing=east,hinge=left] run tag @s add lfel
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfel] at @s run setblock ~ ~ ~ minecraft:iron_door[half=lower,open=true,facing=east,hinge=left] destroy
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfel] at @s run setblock ~ ~1 ~ minecraft:iron_door[half=upper,open=true,facing=east,hinge=left] destroy

execute as @e[type=minecraft:armor_stand,distance=..1000,tag=opendoor] at @s if block ~ ~ ~ minecraft:iron_door[half=lower,open=false,facing=east,hinge=right] run tag @s add lfer
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfer] at @s run setblock ~ ~ ~ minecraft:iron_door[half=lower,open=true,facing=east,hinge=right] destroy
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfer] at @s run setblock ~ ~1 ~ minecraft:iron_door[half=upper,open=true,facing=east,hinge=right] destroy

execute as @e[type=minecraft:armor_stand,distance=..1000,tag=opendoor] at @s if block ~ ~ ~ minecraft:iron_door[half=lower,open=false,facing=north,hinge=left] run tag @s add lfnl
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfnl] at @s run setblock ~ ~ ~ minecraft:iron_door[half=lower,open=true,facing=north,hinge=left] destroy
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfnl] at @s run setblock ~ ~1 ~ minecraft:iron_door[half=upper,open=true,facing=north,hinge=left] destroy

execute as @e[type=minecraft:armor_stand,distance=..1000,tag=opendoor] at @s if block ~ ~ ~ minecraft:iron_door[half=lower,open=false,facing=north,hinge=right] run tag @s add lfnr
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfnr] at @s run setblock ~ ~ ~ minecraft:iron_door[half=lower,open=true,facing=north,hinge=right] destroy
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfnr] at @s run setblock ~ ~1 ~ minecraft:iron_door[half=upper,open=true,facing=north,hinge=right] destroy

execute as @e[type=minecraft:armor_stand,distance=..1000,tag=opendoor] at @s if block ~ ~ ~ minecraft:iron_door[half=lower,open=false,facing=south,hinge=left] run tag @s add lfsl
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfsl] at @s run setblock ~ ~ ~ minecraft:iron_door[half=lower,open=true,facing=south,hinge=left] destroy
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfsl] at @s run setblock ~ ~1 ~ minecraft:iron_door[half=upper,open=true,facing=south,hinge=left] destroy

execute as @e[type=minecraft:armor_stand,distance=..1000,tag=opendoor] at @s if block ~ ~ ~ minecraft:iron_door[half=lower,open=false,facing=south,hinge=right] run tag @s add lfsr
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfsr] at @s run setblock ~ ~ ~ minecraft:iron_door[half=lower,open=true,facing=south,hinge=right] destroy
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfsr] at @s run setblock ~ ~1 ~ minecraft:iron_door[half=upper,open=true,facing=south,hinge=right] destroy

execute as @e[type=minecraft:armor_stand,distance=..1000,tag=opendoor] at @s if block ~ ~ ~ minecraft:iron_door[half=lower,open=false,facing=west,hinge=left] run tag @s add lfwl
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfwl] at @s run setblock ~ ~ ~ minecraft:iron_door[half=lower,open=true,facing=west,hinge=left] destroy
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfwl] at @s run setblock ~ ~1 ~ minecraft:iron_door[half=upper,open=true,facing=west,hinge=left] destroy

execute as @e[type=minecraft:armor_stand,distance=..1000,tag=opendoor] at @s if block ~ ~ ~ minecraft:iron_door[half=lower,open=false,facing=west,hinge=right] run tag @s add lfwr
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfwr] at @s run setblock ~ ~ ~ minecraft:iron_door[half=lower,open=true,facing=west,hinge=right] destroy
execute as @e[type=minecraft:armor_stand,distance=..1000,tag=lfwr] at @s run setblock ~ ~1 ~ minecraft:iron_door[half=upper,open=true,facing=west,hinge=right] destroy


execute as @e[type=minecraft:armor_stand,distance=..1000,tag=opendoor] at @s run kill @s