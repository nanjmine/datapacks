team add strike "ストライク"
team modify strike color yellow
team add ball "ボール"
team modify ball color green
team add out "アウト"
team modify out color red
scoreboard objectives add ballcount dummy "ボールカウント"
scoreboard players set ストライク ballcount 0
scoreboard players set ボール ballcount 0
scoreboard players set アウト ballcount 0
scoreboard objectives setdisplay sidebar ballcount