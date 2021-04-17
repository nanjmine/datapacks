# UUID取得用アマスタ召喚
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["rlaiy_random"]}

# UUID取得
execute store result score #number rlaiy_random run data get entity @e[type=minecraft:armor_stand,limit=1,tag=rlaiy_random] UUID[0]

# UUIDとmaxの剰余を計算
scoreboard players operation #number rlaiy_random %= #max rlaiy_random

# -1を使って絶対値にする
execute unless score #number rlaiy_random matches 0.. run scoreboard players operation #number rlaiy_random *= #-1 rlaiy_random

# 1を足して"0～max-1"だったのを"1～max"に
scoreboard players operation #number rlaiy_random -= #-1 rlaiy_random

# アマスタkill
kill @e[type=minecraft:armor_stand,tag=rlaiy_random]

#合計に足す
scoreboard players operation #sum rlaiy_random += #number rlaiy_random

#回数を1+
scoreboard players operation #times rlaiy_random -= #-1 rlaiy_random

#50m以内のプレイヤーに出目出力
tellraw @a[distance=0..50,tag=rlaiy_random_tell] [{"score":{"name":"#times","objective":"rlaiy_random"}},{"text":"回目の出目:"},{"score":{"name":"#number","objective":"rlaiy_random"}}]

#回数が足りないなら再帰処理
execute if score #times rlaiy_random < #dice rlaiy_random run function rlaiy:rlaiy_function/rlaiy_random_diceroll
