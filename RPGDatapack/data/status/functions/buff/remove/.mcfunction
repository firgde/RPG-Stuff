# this
    tag @s add buff.this
# buffスコア更新
    execute on origin run function status:buff/remove/update
# HUDからアイコン除去
    scoreboard players set @s atk_buff 0
    scoreboard players set @s mag_buff 0
    scoreboard players set @s dex_buff 0
    scoreboard players set @s max_hp_buff 0
    scoreboard players set @s int_buff 0
    scoreboard players set @s def_buff 0
    scoreboard players set @s spd_buff 0
    scoreboard players set @s crt_buff 0
    scoreboard players set @s luk_buff 0
    scoreboard players set @s acc_buff 0
    execute on origin if entity @s[type=player] run function hud:buff/update
# 属性デバフは別途処理
    execute if entity @s[tag=debuff.element] run function status:buff/remove/element
# リセット
    tag @s remove buff.this
    kill @s
