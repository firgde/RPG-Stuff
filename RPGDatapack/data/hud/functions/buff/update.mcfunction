# this.hud
    tag @s add this.hud
# ストレージを空に
    data modify storage combat: data.hud.buff set value []
    data modify storage combat: data.hud.debuff set value []
# 自分のバフを管理するAECを実行者として古い順にストレージに追加
    execute as @e[tag=buff,tag=!debuff.element] store success score @s hasOrigin on origin if entity @s[tag=this.hud]
    execute as @e[tag=buff,scores={hasOrigin=1..}] run function hud:buff/get
# リストの長さから調整用スペースの数を特定
    execute store result score $length buffer run data get storage combat: data.hud.buff
    scoreboard players set $10 buffer 10
    execute store result score $rec buffer run scoreboard players operation $10 buffer -= $length buffer
    function hud:buff/rec/buff
    scoreboard players set $10 buffer 10
    execute store result score $length buffer run data get storage combat: data.hud.debuff
    execute store result score $rec buffer run scoreboard players operation $10 buffer -= $length buffer
    function hud:buff/rec/debuff
# バフ・デバフアイコンを表示
    execute if entity @e[tag=!debuff,scores={hasOrigin=1..},tag=!buff.this] run data modify storage combat: data.hud.hasBuff set value '{"text":"\\uE01D"}'
    execute if entity @e[tag=debuff,scores={hasOrigin=1..},tag=!buff.this] run data modify storage combat: data.hud.hasDebuff set value '{"text":"\\uE02E"}'
    #バフが存在しないなら9pxを表示
    execute unless entity @e[tag=!debuff,scores={hasOrigin=1..},tag=!buff.this] run data modify storage combat: data.hud.hasBuff set value '{"text":"\\uF828\\uF821"}'
    execute unless entity @e[tag=debuff,scores={hasOrigin=1..},tag=!buff.this] run data modify storage combat: data.hud.hasDebuff set value '{"text":"\\uF828\\uF821"}'
# リセット
    scoreboard players reset $10 buffer
    scoreboard players reset $length buffer
    scoreboard players reset $rec buffer
    scoreboard players reset @e[scores={hasOrigin=1..}] hasOrigin
    tag @s remove this.hud
    tag @s remove buff.atk
    tag @s remove buff.mag
    tag @s remove buff.dex
    tag @s remove buff.hp
    tag @s remove buff.int
    tag @s remove buff.def
    tag @s remove buff.spd
    tag @s remove buff.crt
    tag @s remove buff.luk
    tag @s remove buff.acc
