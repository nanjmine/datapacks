#体力最低(♥3~5)
#ブロック最低
#エンパ所持

clear @p
effect give @p instant_health 20
effect give @p saturation 20
effect give @p resistance 10 4

#common
give @p minecraft:wooden_pickaxe{CanDestroy:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon",],HideFlags:127,Unbreakable:1b}
give @p iron_sword{HideFlags:127,Unbreakable:1b}
give @p minecraft:ender_pearl 4
give @p golden_apple 4

#red
execute as @p if entity @s[team=apred] run replaceitem entity @s armor.head leather_helmet{display:{color:16711680},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1224317128,1647922159,-1520209017,2004406026],Slot:"head"}]} 1
execute as @p if entity @s[team=apred] run replaceitem entity @s armor.chest leather_chestplate{display:{color:16711680},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-1455675498,545607201,-1392839711,1473625835],Slot:"chest"}]} 1
execute as @p if entity @s[team=apred] run replaceitem entity @s armor.legs leather_leggings{display:{color:16711680},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1265487767,-2129310016,-1336837066,-1510858969],Slot:"legs"}]} 1
execute as @p if entity @s[team=apred] run replaceitem entity @s armor.feet leather_boots{display:{color:16711680},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-697188914,1274234391,-1151511126,-1694943922],Slot:"feet"}]} 1
execute as @p if entity @s[team=apred] run give @s red_stained_glass{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apred] at @e[tag=beaconbreak_equip,team=apred] run spawnpoint @s ~ ~ ~ ~
execute as @p if entity @s[team=apred] at @e[tag=beaconbreak_tp,team=apred] run tp @s ~ ~ ~ ~ ~

#blue
execute as @p if entity @s[team=apblue] run replaceitem entity @s armor.head leather_helmet{display:{color:255},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1224317128,1647922159,-1520209017,2004406026],Slot:"head"}]} 1
execute as @p if entity @s[team=apblue] run replaceitem entity @s armor.chest leather_chestplate{display:{color:255},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-1455675498,545607201,-1392839711,1473625835],Slot:"chest"}]} 1
execute as @p if entity @s[team=apblue] run replaceitem entity @s armor.legs leather_leggings{display:{color:255},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1265487767,-2129310016,-1336837066,-1510858969],Slot:"legs"}]} 1
execute as @p if entity @s[team=apblue] run replaceitem entity @s armor.feet leather_boots{display:{color:255},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-697188914,1274234391,-1151511126,-1694943922],Slot:"feet"}]} 1
execute as @p if entity @s[team=apred] run give @s blue_stained_glass{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apblue] at @e[tag=beaconbreak_equip,team=apblue] run spawnpoint @s ~ ~ ~ ~
execute as @p if entity @s[team=apblue] at @e[tag=beaconbreak_tp,team=apblue] run tp @s ~ ~ ~ ~ ~

#green
execute as @p if entity @s[team=apgreen] run replaceitem entity @s armor.head leather_helmet{display:{color:48896},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1224317128,1647922159,-1520209017,2004406026],Slot:"head"}]} 1
execute as @p if entity @s[team=apgreen] run replaceitem entity @s armor.chest leather_chestplate{display:{color:48896},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-1455675498,545607201,-1392839711,1473625835],Slot:"chest"}]} 1
execute as @p if entity @s[team=apgreen] run replaceitem entity @s armor.legs leather_leggings{display:{color:48896},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1265487767,-2129310016,-1336837066,-1510858969],Slot:"legs"}]} 1
execute as @p if entity @s[team=apgreen] run replaceitem entity @s armor.feet leather_boots{display:{color:48896},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-697188914,1274234391,-1151511126,-1694943922],Slot:"feet"}]} 1
execute as @p if entity @s[team=apred] run give @s green_stained_glass{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apgreen] at @e[tag=beaconbreak_equip,team=apgreen] run spawnpoint @s ~ ~ ~ ~
execute as @p if entity @s[team=apgreen] at @e[tag=beaconbreak_tp,team=apgreen] run tp @s ~ ~ ~ ~ ~


#yellow
execute as @p if entity @s[team=apyellow] run replaceitem entity @s armor.head leather_helmet{display:{color:16776960},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1224317128,1647922159,-1520209017,2004406026],Slot:"head"}]} 1
execute as @p if entity @s[team=apyellow] run replaceitem entity @s armor.chest leather_chestplate{display:{color:16776960},EHideFlags:127,nchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-1455675498,545607201,-1392839711,1473625835],Slot:"chest"}]} 1
execute as @p if entity @s[team=apyellow] run replaceitem entity @s armor.legs leather_leggings{display:{color:16776960},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1265487767,-2129310016,-1336837066,-1510858969],Slot:"legs"}]} 1
execute as @p if entity @s[team=apyellow] run replaceitem entity @s armor.feet leather_boots{display:{color:16776960},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-697188914,1274234391,-1151511126,-1694943922],Slot:"feet"}]} 1
execute as @p if entity @s[team=apred] run give @s yellow_stained_glass{CanPlaceOn:["minecraft:red_wool","minecraft:blue_wool","minecraft:green_wool","minecraft:yellow_wool","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:green_stained_glass","minecraft:yellow_stained_glass","minecraft:white_concrete","minecraft:red_concrete","minecraft:blue_concrete","minecraft:green_concrete","minecraft:yellow_concrete","minecraft:red_terracotta","minecraft:blue_terracotta","minecraft:green_terracotta","minecraft:yellow_terracotta","minecraft:beacon","minecraft:iron_block"],HideFlags:127} 64
execute as @p if entity @s[team=apyellow] at @e[tag=beaconbreak_equip,team=apyellow] run spawnpoint @s ~ ~ ~ ~
execute as @p if entity @s[team=apyellow] at @e[tag=beaconbreak_tp,team=apyellow] run tp @s ~ ~ ~ ~ ~