# �X�R�A�쐬
scoreboard objectives add rlaiy_random dummy

# -1��max(�ő嗐��)�ݒ�
scoreboard players set #-1 rlaiy_random -1
scoreboard players set #max rlaiy_random 99

# UUID�擾�p�A�}�X�^����
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["rlaiy_random"]}

# UUID�擾
execute store result score #number rlaiy_random run data get entity @e[type=minecraft:armor_stand,limit=1,tag=rlaiy_random] UUID[0]

# UUID��max�̏�]���v�Z
scoreboard players operation #number rlaiy_random %= #max rlaiy_random

# ��Βl�ɂ���
execute unless score #number rlaiy_random matches 0.. run scoreboard players operation #number rlaiy_random *= #-1 rlaiy_random

# 1�𑫂���"0�`max-1"�������̂�1�`max��
scoreboard players operation #number rlaiy_random -= #-1 rlaiy_random

# �A�}�X�^kill
kill @e[type=minecraft:armor_stand,tag=rlaiy_random]