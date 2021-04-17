loot give @a[advancements={rlaiy:rlaiy_advancements/snowball=true}] loot rlaiy:snowball
tellraw @a[distance=0..] [{"selector":"@a[advancements={rlaiy:rlaiy_advancements/snowball=true}]"},{"text":"に雪玉がヒット！"}]
kill @a[advancements={rlaiy:rlaiy_advancements/snowball=true}]
advancement revoke @a[advancements={rlaiy:rlaiy_advancements/snowball=true}] only rlaiy:rlaiy_advancements/snowball