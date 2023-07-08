# ストレージ&スコアからデバフの情報を代入
    #タグ
    data modify entity @s Tags set from storage combat: data.buff.Tags
    #時間
    execute store result score @s buff_timer run data get storage combat: data.buff.time
    #上昇/減少するステータス&その値
    execute store result score @s atk_buff run data get storage combat: data.buff.status.atk
    execute store result score @s mag_buff run data get storage combat: data.buff.status.mag
    execute store result score @s dex_buff run data get storage combat: data.buff.status.dex
    execute store result score @s max_hp_buff run data get storage combat: data.buff.status.hp
    execute store result score @s int_buff run data get storage combat: data.buff.status.int
    execute store result score @s def_buff run data get storage combat: data.buff.status.def
    execute store result score @s spd_buff run data get storage combat: data.buff.status.spd
    execute store result score @s crt_buff run data get storage combat: data.buff.status.crt
    execute store result score @s luk_buff run data get storage combat: data.buff.status.luk
    execute store result score @s acc_buff run data get storage combat: data.buff.status.acc
    #スリップダメージなら量を設定
    execute store result score @s buff_amount run data get storage combat: data.buff.Amount
# HUDを更新
    execute on origin if entity @s[type=player] run function hud:buff/update
# originのバフステータスに加算
    execute on origin run function status:buff/add
# 属性バフがかかったなら他をリセット
    execute as @e[tag=debuff.element,tag=!buff.init] store success score @s hasOrigin on origin if entity @s[tag=this]
    execute as @e[tag=debuff.element,scores={hasOrigin=1..}] run function status:buff/remove/
# リセット
    tag @s remove buff.init
    data remove storage combat: data.buff
