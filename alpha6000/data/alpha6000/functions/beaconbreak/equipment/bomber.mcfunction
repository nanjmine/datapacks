#体力低め
#耐爆スーツ
#TNTと火球所持


clear @p
effect give @p instant_health 20
effect give @p saturation 20
effect give @p resistance 10 4

#common
give @p minecraft:wooden_pickaxe{CanDestroy:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:tnt"],HideFlags:127,Unbreakable:1b}
give @p stone_sword{CanDestroy:["minecraft:tnt"],HideFlags:127,Unbreakable:1b}
give @p cookie 64
give @p tnt{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127,BlockStateTag:{unstable:"true"}} 3
give @p fire_charge{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 4
#red
execute as @p if entity @s[team=apred] run replaceitem entity @s armor.head leather_helmet{display:{color:16711680},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apred] run replaceitem entity @s armor.chest leather_chestplate{display:{color:16711680},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apred] run replaceitem entity @s armor.legs leather_leggings{display:{color:16711680},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apred] run replaceitem entity @s armor.feet leather_boots{display:{color:16711680},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:4s}]} 1
execute as @p if entity @s[team=apred] run give @s red_wool{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apred] run give @s red_terracotta{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apred] at @e[tag=beaconbreak_equip,team=apred] run spawnpoint @s ~ ~ ~ ~
execute as @p if entity @s[team=apred] at @e[tag=beaconbreak_tp,team=apred] run tp @s ~ ~ ~ ~ ~

#blue
execute as @p if entity @s[team=apblue] run replaceitem entity @s armor.head leather_helmet{display:{color:255},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apblue] run replaceitem entity @s armor.chest leather_chestplate{display:{color:255},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apblue] run replaceitem entity @s armor.legs leather_leggings{display:{color:255},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apblue] run replaceitem entity @s armor.feet leather_boots{display:{color:255},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:4s}]} 1
execute as @p if entity @s[team=apblue] run give @s blue_wool{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apblue] run give @s blue_terracotta{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apblue] at @e[tag=beaconbreak_equip,team=apblue] run spawnpoint @s ~ ~ ~ ~
execute as @p if entity @s[team=apblue] at @e[tag=beaconbreak_tp,team=apblue] run tp @s ~ ~ ~ ~ ~

#green
execute as @p if entity @s[team=apgreen] run replaceitem entity @s armor.head leather_helmet{display:{color:48896},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apgreen] run replaceitem entity @s armor.chest leather_chestplate{display:{color:48896},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apgreen] run replaceitem entity @s armor.legs leather_leggings{display:{color:48896},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apgreen] run replaceitem entity @s armor.feet leather_boots{display:{color:48896},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:4s}]} 1
execute as @p if entity @s[team=apgreen] run give @s green_wool{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apgreen] run give @s green_terracotta{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apgreen] at @e[tag=beaconbreak_equip,team=apgreen] run spawnpoint @s ~ ~ ~ ~
execute as @p if entity @s[team=apgreen] at @e[tag=beaconbreak_tp,team=apgreen] run tp @s ~ ~ ~ ~ ~

#yellow
execute as @p if entity @s[team=apyellow] run replaceitem entity @s armor.head leather_helmet{display:{color:16776960},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apyellow] run replaceitem entity @s armor.chest leather_chestplate{display:{color:16776960},EHideFlags:127,nchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apyellow] run replaceitem entity @s armor.legs leather_leggings{display:{color:16776960},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @p if entity @s[team=apyellow] run replaceitem entity @s armor.feet leather_boots{display:{color:16776960},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:4s}]} 1
execute as @p if entity @s[team=apyellow] run give @s yellow_wool{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apyellow] run give @s yellow_terracotta{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apyellow] at @e[tag=beaconbreak_equip,team=apyellow] run spawnpoint @s ~ ~ ~ ~
execute as @p if entity @s[team=apyellow] at @e[tag=beaconbreak_tp,team=apyellow] run tp @s ~ ~ ~ ~ ~