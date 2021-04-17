#職作成テンプレ
# ~~~に共通の固有名詞、簡単な英単語だと被る可能性があるので何か自分なりの単語を最初につけるといいかも

tag @a[tag=puyukari_wait,tag=!pkr] add puyukari
tag @a[tag=puyukari_wait,tag=puyukari,tag=!pkr] remove puyukari_wait


#３行目以降にやりたいことを書く
#ここでアイテムをgiveしたりチームに入れたりみたいな最初の1回だけの動作をする

#execute as @a[tag=!pkr,tag=pu~~~,tag=!pu~~~_wait] run 


#ゲーム中にタグが必要なときはここでタグを付与するといい

#慣例的にpu~~~2とつける(べつにそうする必要はない)
execute as @a[tag=!pkr,tag=puyukari,tag=!puyukari_wait] run tag @s add puyukari2

#最初につけたタグを取り除く
execute as @a[tag=!pkr,tag=puyukari,tag=!puyukari_wait] run tag @s remove puyukari


#ゲーム中機能するpu~~~2の動作を書く
#ゆかりの座標を足し合わせた場所にアマスタをおいてそこにむいてtp
execute if entity @e[tag=abpmid] if score pubgborder1 unko matches 0.. run scoreboard players add ゆかり unko 1
#こいつが中心
execute unless entity @e[tag=yukarimid] as @a[tag=puyukari2,limit=1,sort=random] at @s if score ゆかり unko matches 1.. run summon armor_stand ~ ~ ~ {Tags:["yukarimid"],NoGravity:1,Marker:1,Invisible:1}
#こいつが中心にむかってゆっくり
execute unless entity @e[tag=yukarifacing] as @e[tag=abpmid,tag=!abptpyukari,limit=1,sort=random] at @s if score ゆかり unko matches 1.. run summon armor_stand ~ ~ ~ {Tags:["yukarifacing"],NoGravity:1,Marker:1,Invisible:1}
execute if entity @e[tag=abpmid,tag=!abptpyukari] run tp @e[tag=yukarifacing] @e[tag=abpmid,limit=1,tag=!abptpyukari]
execute if entity @e[tag=abpmid,tag=!abptpyukari] if entity @e[tag=yukarifacing] run tag @e[tag=abpmid,tag=!abptpyukari] add abptpyukari
scoreboard objectives add yukariX dummy
scoreboard objectives add yukariZ dummy
scoreboard objectives add yukariwari dummy
scoreboard players reset @e[tag=yukarimid] yukariX
scoreboard players reset @e[tag=yukarimid] yukariZ
scoreboard players reset @e[tag=yukarimid] yukariwari
execute as @a[tag=puyukari2] at @s store result score @s yukariX run data get entity @s Pos[0]
execute as @a[tag=puyukari2] at @s store result score @s yukariZ run data get entity @s Pos[2]
execute as @a[tag=puyukari2] run scoreboard players add @e[tag=yukarimid] yukariwari 1
execute as @a[tag=puyukari2] run scoreboard players operation @e[tag=yukarimid] yukariX += @s yukariX
execute as @a[tag=puyukari2] run scoreboard players operation @e[tag=yukarimid] yukariZ += @s yukariZ
execute as @e[tag=yukarimid] run scoreboard players operation @s yukariX /= @s yukariwari
execute as @e[tag=yukarimid] run scoreboard players operation @s yukariZ /= @s yukariwari
execute as @e[tag=yukarimid] store result entity @s Pos[0] double 1 run scoreboard players get @s yukariX
execute as @e[tag=yukarimid] store result entity @s Pos[2] double 1 run scoreboard players get @s yukariZ
#この時点でpuyukari2は中心に移動
execute if entity @e[tag=abpmid] as @e[tag=yukarifacing,limit=1] at @s facing entity @e[tag=yukarimid,limit=1] eyes run tp @s ^ ^ ^0.03
execute if entity @e[tag=abpmid,tag=abptpyukari] if entity @e[tag=yukarifacing] run tp @e[tag=abpmid,tag=abptpyukari] @e[tag=yukarifacing,limit=1]
execute as @e[tag=abpmid] at @s run worldborder center ~ ~
execute at @e[tag=abpmid] run spawnpoint @a[distance=0..] ~ ~ ~
##


#ゲーム中を指定する引数(待機所で誤爆防止用)
#if score pubgborder1 unko matches 0..
#ゲームの進行度はスコア毎に分かれる．
#最初の４分は0，１回目の縮小は1，次の3分は2，2回目の縮小は3，サドンデスは4

#マップの中心は@e[tag=abpmid,type=armor_stand]
#マップの範囲は1辺400mの正方形(ワールドボーダー)
#1回目の縮小で200m，最後は20mくらいだった気がする

#参加者の判別は@a[gamemode=survival,distance=0..],実行者はababa内の何か






################################################################################################################################################
#以下ababa内で設置するコマブロ


#ゲーム中継続してつくタグ(pu~~~2)の削除はx=56 z=-40の塔の「一番上から二つ目」に追加していく(execute as @a[tag=pkr] run tag @s add pkr2 のコマブロの下) 
#execute as @a[tag=pkr] run tag @s remove pu~~~2
#pkrは職変更時，死亡時などリセットする際につくタグ
#コマンド動作中に死んだときにリセットがかかっても正常に終了するように使われているタグはすべてpkrに追加するのが望ましい
#所持品やチームなど基本的なリセットはもう書かれているのでゲーム中に使われるタグのみでいい(職選択時に一瞬使われるpu~~~はいらない．)


#使われるスコアの削除はx=54 z=-35の塔の一番上に追加する


#ファンクションコマブロは赤石の板の上に設置する(赤石の板は四隅の白色のコンクリートが頂点になるように生成される)
#コマブロを設置する際はメンテしやすい場所におくとよい(ファンクションだから意味ない)


#職選択所は周りの構成をまねる
#インパルスの一つ目
#tag @p add pkr
#チェーンの二つ目はpu~~~に_waitをつける
#tag @p add pu~~~_wait


#基幹部分にかかわるコマンドは要相談(一番最初に生成されるチェストに何かしたい，死亡をなかったことにしたい等)
#~~の条件で勝利，~~の条件でストレングス付与は要相談
#それ以外は相談不要，バランス調整は実戦で