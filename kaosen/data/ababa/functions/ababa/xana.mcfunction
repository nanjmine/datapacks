tag @a[tag=puxana_wait,tag=!pkr] add puxana
tag @a[tag=puxana_wait,tag=puxana,tag=!pkr] remove puxana_wait
execute as @a[tag=!pkr,tag=puxana,tag=!puxana_wait] run give @s stick{display:{Name:'{"text":"悔悟棒"}',Lore:['{"text":"一番キル数が多い者を断罪する"}','{"text":"(捨てて発動,クールタイム2分)"}']}} 1
execute as @a[tag=!pkr,tag=puxana,tag=!puxana_wait] run tag @s add puxana2
execute as @a[tag=!pkr,tag=puxana,tag=!puxana_wait] run tag @s remove puxana

#スコアpuxana= スティックドロップ
#puxanakill=キル数
execute if score pubgborder1 unko matches 0.. as @a[tag=puxana2,scores={puxana=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,distance=..5,nbt={Item: {id: "minecraft:stick", Count: 1b, tag: {display: {Lore: ['{"text":"一番キル数が多い者を断罪する"}', '{"text":"(捨てて発動,クールタイム2分)"}'], Name: '{"text":"悔悟棒"}'}}}}] run tag @s add puxanado
#puxanado 能力発動
#execute as @a[scores={puxanakill=1..}] run scoreboard players operation @s puxanakilltmp = @s puxanakill
execute if score pubgborder1 unko matches 0.. as @a[tag=puxana2,scores={puxana=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,distance=..5,nbt={Item: {id: "minecraft:stick", Count: 1b, tag: {display: {Lore: ['{"text":"一番キル数が多い者を断罪する"}', '{"text":"(捨てて発動,クールタイム2分)"}'], Name: '{"text":"悔悟棒"}'}}}}] run kill @e[type=item,limit=1,sort=nearest,distance=..5,nbt={Item: {id: "minecraft:stick", Count: 1b, tag: {display: {Lore: ['{"text":"一番キル数が多い者を断罪する"}', '{"text":"(捨てて発動,クールタイム2分)"}'], Name: '{"text":"悔悟棒"}'}}}}]
scoreboard players reset @a puxana
execute as @a[scores={puxanakill=1..}] run scoreboard players operation @s puxanakilltmp = @s puxanakill
execute unless entity @a[tag=thisxana] as @a[tag=puxanado,limit=1] if entity @a[scores={puxanakill=1..}] run function ababa:ababa/whodanzai
scoreboard players reset @a puxanakilltmp
execute unless entity @a[scores={puxanakill=1..}] run tag @a[tag=puxanado] add puxanafin
execute unless entity @a[scores={puxanakill=1..}] run tag @a[tag=puxanafin] remove puxanado
execute as @a[tag=puxanado] run say 断罪する
execute if entity @a[tag=puxanado] as @a[tag=thisxana] at @s run summon lightning_bolt
execute as @a[tag=puxanado] run tag @s add puxanafin
execute as @a[tag=puxanafin] run tag @s remove puxanado
tag @a[tag=thisxana] remove thisxana
#puxanatime=時間計測
scoreboard players add @a[tag=puxanafin] puxanatime 1
execute as @a[tag=puxanafin,scores={puxanatime=2400..}] run give @s stick{display:{Name:'{"text":"悔悟棒"}',Lore:['{"text":"一番キル数が多い者を断罪する"}','{"text":"(捨てて発動,クールタイム2分)"}']}} 1
tag @a[tag=puxanafin,scores={puxanatime=2400..}] remove puxanafin
scoreboard players reset @a[scores={puxanatime=2400..}] puxanatime