#発動
execute as @a if score @s ap_mm_sword matches 1.. run tag @s add ap_mm_sword
execute as @a if entity @s[tag=ap_mm_sword] at @s run summon armor_stand ^ ^ ^0.1 {ShowArms:1b,Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[350f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],NoGravity:1b,Tags:["ap_mm_sword_thrown"],Invisible:1b}
execute as @a if entity @s[tag=ap_mm_sword] at @s run execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @a if entity @s[tag=ap_mm_sword] at @s store result score @s ap_mm_swordPitch run data get entity @s Rotation[1]
execute as @a if entity @s[tag=ap_mm_sword] at @s run execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players add @p ap_mm_swordPitch 350
execute as @a if entity @s[tag=ap_mm_sword] at @s run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_sword"}}]
execute as @a if entity @s[tag=ap_mm_sword] at @s run scoreboard players reset @s ap_mm_sword
execute as @a if entity @s[tag=ap_mm_sword] at @s run tag @s add ap_mm_sword_charge
execute as @a if entity @s[tag=ap_mm_sword] at @s run tag @s remove ap_mm_sword

#チャージw
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s run scoreboard players add @s ap_mm_charge 1
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 1..10 run title @s actionbar {"text":"□□□□□□□□□□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 11..20 run title @s actionbar {"text":"■□□□□□□□□□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 21..30 run title @s actionbar {"text":"■■□□□□□□□□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 31..40 run title @s actionbar {"text":"■■■□□□□□□□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 41..50 run title @s actionbar {"text":"■■■■□□□□□□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 51..60 run title @s actionbar {"text":"■■■■■□□□□□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 61..70 run title @s actionbar {"text":"■■■■■■□□□□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 71..80 run title @s actionbar {"text":"■■■■■■■□□□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 81..90 run title @s actionbar {"text":"■■■■■■■■□□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 91..100 run title @s actionbar {"text":"■■■■■■■■■□"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 101.. run title @s actionbar {"text":"■■■■■■■■■■"}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 101.. run replaceitem entity @s weapon.mainhand iron_sword{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:14,Operation:0,UUID:[I;1121877375,-763279095,-1444327822,36134898],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;-1366564060,-211991005,-1534127374,2104260545],Slot:"mainhand"}]}
execute as @a if entity @s[tag=ap_mm_sword_charge] at @s if score @s ap_mm_charge matches 101.. run tag @s remove ap_mm_sword_charge
execute as @a at @s if score @s ap_mm_charge matches 101.. run scoreboard players reset @s ap_mm_charge

#常時
execute as @a unless entity @s[tag=ap_mm_sword_charge] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run title @s actionbar ["",{"keybind":"key.drop"},{"text":"キーで投げる"}]

#ナイフ移動
execute as @e[tag=ap_mm_sword_thrown,type=armor_stand] at @s run tp @s ^ ^ ^1 ~ ~
execute as @e[tag=ap_mm_sword_thrown,type=armor_stand] at @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=ap_mm_sword_thrown,type=armor_stand] at @s run effect give @e[tag=!killer,distance=..0.5] instant_damage 1 3
execute as @e[tag=ap_mm_sword_thrown,type=armor_stand] at @s run effect give @e[tag=!killer,distance=..2] instant_damage 1 0
execute as @e[tag=ap_mm_sword_thrown,type=armor_stand] at @s run effect give @e[tag=!killer,distance=..2] wither 10 0

execute as @e[tag=ap_mm_sword_thrown,type=armor_stand] at @s unless block ~ ~1 ~ air run tag @s add ap_mm_sword_break
execute as @e[tag=ap_mm_sword_break,type=armor_stand] at @s run particle block iron_block ~ ~1 ~ 0.5 0.5 0.5 0.5 20 normal
execute as @e[tag=ap_mm_sword_break,type=armor_stand] at @s run playsound minecraft:block.anvil.place master @a ~ ~1 ~ 0.3 2
execute as @e[tag=ap_mm_sword_break,type=armor_stand] at @s run kill @s
