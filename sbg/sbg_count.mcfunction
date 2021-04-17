scoreboard objectives remove ballcount2
scoreboard objectives add ballcount2 dummy "カウント"
scoreboard objectives setdisplay sidebar ballcount2
team empty strike
team empty ball
team empty out
execute if score ストライク ballcount matches 0 run scoreboard players add S:○○ ballcount2 3
team join strike S:○○
execute if score ストライク ballcount matches 1 run scoreboard players add S:●○ ballcount2 3
team join strike S:●○
execute if score ストライク ballcount matches 2 run scoreboard players add S:●● ballcount2 3
team join strike S:●●
execute if score ボール ballcount matches 0 run scoreboard players add B:○○○ ballcount2 2
team join ball B:○○○
execute if score ボール ballcount matches 1 run scoreboard players add B:●○○ ballcount2 2
team join ball B:●○○
execute if score ボール ballcount matches 2 run scoreboard players add B:●●○ ballcount2 2
team join ball B:●●○
execute if score ボール ballcount matches 3 run scoreboard players add B:●●● ballcount2 2
team join ball B:●●●
execute if score アウト ballcount matches 0 run scoreboard players add O:○○ ballcount2 1
team join out O:○○
execute if score アウト ballcount matches 1 run scoreboard players add O:●○ ballcount2 1
team join out O:●○
execute if score アウト ballcount matches 2 run scoreboard players add O:●● ballcount2 1
team join out O:●●
execute if score ストライク ballcount matches 3 run say バッターアウト
execute if score ボール ballcount matches 4 run say フォアボール
execute if score アウト ballcount matches 3 run say 交代
tellraw @a ["",{"score":{"name":"ストライク","objective":"ballcount"},"color":"yellow"},{"text":"-","color":"white"},{"score":{"name":"ボール","objective":"ballcount"},"color":"green"},{"text":"-","color":"white"},{"score":{"name":"アウト","objective":"ballcount"},"color":"red"}]