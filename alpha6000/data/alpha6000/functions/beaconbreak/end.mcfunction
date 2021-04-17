effect give @a minecraft:resistance 10 4 true
effect give @a minecraft:instant_health 20 0 true
effect give @a minecraft:saturation 20 0 true
scoreboard objectives remove beaconbreak
scoreboard objectives remove beacondeath
scoreboard objectives remove beaconsurvive
scoreboard objectives remove beaconexppower
scoreboard objectives remove beaconfiredrop
scoreboard objectives remove beaconfireX
scoreboard objectives remove beaconfireY
scoreboard objectives remove beaconfire
tag @a remove beaconbreak_death
tag @a remove beaconbreak_survive
tp @a[tag=beaconbreak] @e[type=armor_stand,limit=1,sort=nearest,tag=beaconbreak_end]
tag @e[type=armor_stand,tag=beaconbreak_observe] remove beaconbreak_broken
tag @a remove beaconbreak
tag @a remove beaconbreak_broken
tag @e remove beaconbreak_death