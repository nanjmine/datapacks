setblock ~ ~ ~ air replace
fill ~2 ~2 ~2 ~-2 ~0 ~-2 air replace
fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 blue_concrete replace
setblock ~ ~ ~2 chest{Items:[{Slot:0b,id:"minecraft:warped_fence",Count:64b},{Slot:1b,id:"minecraft:warped_fence",Count:64b},{Slot:2b,id:"minecraft:warped_fence",Count:64b},{Slot:3b,id:"turtle_spawn_egg",Count:3b,tag:{display:{Name:'{"text":"青の旗"}'},EntityTag:{id:"minecraft:armor_stand",Tags:["bluebanner"],DisabledSlots:4144959}}},{Slot:4b,id:"minecraft:bread",Count:10b}]}
summon armor_stand ~ ~ ~ {Tags:["bluerespawn"],NoGravity:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959}