execute as @e[tag=beaconbreak] run data merge entity @s {Glowing:1b,Marker:0b,Invisible:0b}
give @p chicken_spawn_egg{display:{Name:'{"text":"赤ビーコンエッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apred",NoGravity:1b,Tags:["beaconbreak","beaconbreak_observe"],DisabledSlots:4144959,Glowing:1b,},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1
give @p turtle_spawn_egg{display:{Name:'{"text":"青ビーコンエッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apblue",NoGravity:1b,Tags:["beaconbreak","beaconbreak_observe"],DisabledSlots:4144959,Glowing:1b,},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1
give @p creeper_spawn_egg{display:{Name:'{"text":"緑ビーコンエッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apgreen",NoGravity:1b,Tags:["beaconbreak","beaconbreak_observe"],DisabledSlots:4144959,Glowing:1b,},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1
give @p ocelot_spawn_egg{display:{Name:'{"text":"黄ビーコンエッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apyellow",NoGravity:1b,Tags:["beaconbreak","beaconbreak_observe"],DisabledSlots:4144959,Glowing:1b,},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1
give @p chicken_spawn_egg{display:{Name:'{"text":"赤装備所エッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apred",NoGravity:1b,Tags:["beaconbreak","beaconbreak_equip"],DisabledSlots:4144959,Glowing:1b,}} 1
give @p turtle_spawn_egg{display:{Name:'{"text":"青装備所エッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apblue",NoGravity:1b,Tags:["beaconbreak","beaconbreak_equip"],DisabledSlots:4144959,Glowing:1b,}} 1
give @p creeper_spawn_egg{display:{Name:'{"text":"緑装備所エッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apgreen",NoGravity:1b,Tags:["beaconbreak","beaconbreak_equip"],DisabledSlots:4144959,Glowing:1b,}} 1
give @p ocelot_spawn_egg{display:{Name:'{"text":"黄装備所エッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apyellow",NoGravity:1b,Tags:["beaconbreak","beaconbreak_equip"],DisabledSlots:4144959,Glowing:1b,}} 1
give @p chicken_spawn_egg{display:{Name:'{"text":"赤戦場tpエッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apred",NoGravity:1b,Tags:["beaconbreak","beaconbreak_tp"],DisabledSlots:4144959,Glowing:1b,}} 1
give @p turtle_spawn_egg{display:{Name:'{"text":"青戦場tpエッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apblue",NoGravity:1b,Tags:["beaconbreak","beaconbreak_tp"],DisabledSlots:4144959,Glowing:1b,}} 1
give @p creeper_spawn_egg{display:{Name:'{"text":"緑戦場tpエッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apgreen",NoGravity:1b,Tags:["beaconbreak","beaconbreak_tp"],DisabledSlots:4144959,Glowing:1b,}} 1
give @p ocelot_spawn_egg{display:{Name:'{"text":"黄戦場tpエッグ"}'},EntityTag:{id:"minecraft:armor_stand",Team:"apyellow",NoGravity:1b,Tags:["beaconbreak","beaconbreak_tp"],DisabledSlots:4144959,Glowing:1b,}} 1
give @p skeleton_spawn_egg{display:{Name:'{"text":"整地エッグ"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["beaconbreak","beaconbreak_fill"],DisabledSlots:4144959,Glowing:1b,}} 1
give @p skeleton_spawn_egg{display:{Name:'{"text":"終了時tpエッグ"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["beaconbreak","beaconbreak_end"],DisabledSlots:4144959,Glowing:1b,}} 1
team add apred "赤"
team modify apred collisionRule never
team modify apred color red
team modify apred friendlyFire false
team modify apred nametagVisibility never
team add apblue "青"
team modify apblue collisionRule never
team modify apblue color aqua
team modify apblue friendlyFire false
team modify apblue nametagVisibility never
team add apgreen "緑"
team modify apgreen collisionRule never
team modify apgreen color green
team modify apgreen friendlyFire false
team modify apgreen nametagVisibility never
team add apyellow "黄"
team modify apyellow collisionRule never
team modify apyellow color yellow
team modify apyellow friendlyFire false
team modify apyellow nametagVisibility never

kill @e[type=tnt,tag=beaconbreak]
kill @e[type=fireball,tag=beaconbreak]










tellraw @p {"text":"ここをクリックしてデバッグを終了","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=beaconbreak] run data merge entity @s {Glowing:0b,Marker:1b,Invisible:1b,CustomNameVisible:0b}"}}