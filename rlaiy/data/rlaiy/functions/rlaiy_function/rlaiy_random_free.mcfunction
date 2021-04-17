#使い方:以下のコマンドをあらかじめ実行
# /scoreboard objectives add rlaiy_random dummy
# /scoreboard players set #max rlaiy_random XXX (XXXは最大数)

#使い方2:本体functionを実行
# /function rlaiy:rlaiy_function/rlaiy_random_free

#使い方3:乱数を使ったコマンドを実行(使用後はスコアボードを削除)
# /scoreboard objectives remove rlaiy_random


# スコア作成(freeではあらかじめ作っておく)
# scoreboard objectives add rlaiy_random dummy

# -1とmax(最大乱数)設定(freeではmaxをあらかじめ作っておく)
scoreboard players set #-1 rlaiy_random -1
# scoreboard players set #max rlaiy_random 99

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