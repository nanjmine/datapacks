execute at @s as @a[gamemode=survival,distance=0..,scores={puxanakill=1..}] run tag @s add whoxana

scoreboard players remove @a[tag=whoxana] puxanakilltmp 1
execute unless entity @a[tag=whoxana,scores={puxanakilltmp=1..}] run tag @a[tag=whoxana,scores={puxanakilltmp=0}] add thisxana
tag @a[tag=whoxana] remove whoxana

execute unless entity @a[tag=thisxana] if entity @a[scores={puxanakill=1..}] run function ababa:ababa/whodanzai