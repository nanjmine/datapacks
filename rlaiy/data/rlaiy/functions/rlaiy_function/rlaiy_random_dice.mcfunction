
# -1と合計と現在実行数設定
scoreboard players set #-1 rlaiy_random -1
scoreboard players set #sum rlaiy_random 0
scoreboard players set #times rlaiy_random 0

execute if score #times rlaiy_random < #dice rlaiy_random run function rlaiy:rlaiy_function/rlaiy_random_diceroll

tellraw @a[distance=0..50,tag=rlaiy_random_tell] [{"text":"合計:"},{"score":{"name":"#sum","objective":"rlaiy_random"}}]
