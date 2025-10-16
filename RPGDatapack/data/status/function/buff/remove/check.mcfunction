# origin
    execute on origin run tag @s add context.origin

    execute if score @s buff_timer_atk matches ..0 run function status:buff/remove/status/atk
    execute if score @s buff_timer_mag matches ..0 run function status:buff/remove/status/mag
    execute if score @s buff_timer_dex matches ..0 run function status:buff/remove/status/dex
    execute if score @s buff_timer_max_hp matches ..0 run function status:buff/remove/status/hp
    execute if score @s buff_timer_int matches ..0 run function status:buff/remove/status/int
    execute if score @s buff_timer_def matches ..0 run function status:buff/remove/status/def
    execute if score @s buff_timer_spd matches ..0 run function status:buff/remove/status/spd
    execute if score @s buff_timer_crt matches ..0 run function status:buff/remove/status/crt
    execute if score @s buff_timer_luk matches ..0 run function status:buff/remove/status/luk
    execute if score @s buff_timer_acc matches ..0 run function status:buff/remove/status/acc
    execute if score @s buff_timer_resistance_melee matches ..0 run function status:buff/remove/resistance/melee
    execute if score @s buff_timer_resistance_magic matches ..0 run function status:buff/remove/resistance/magic
    execute if score @s buff_timer_resistance_ranged matches ..0 run function status:buff/remove/resistance/ranged
    execute if score @s buff_timer_resistance_fire matches ..0 run function status:buff/remove/resistance/fire
    execute if score @s buff_timer_resistance_ice matches ..0 run function status:buff/remove/resistance/ice
    execute if score @s buff_timer_resistance_wind matches ..0 run function status:buff/remove/resistance/wind
    execute if score @s buff_timer_resistance_thunder matches ..0 run function status:buff/remove/resistance/thunder
    execute if score @s buff_timer_element matches ..0 if entity @s[tag=debuff.element] run function status:buff/remove/element
# ステータス更新
    function status:update/
# HUDを更新
    execute on origin if entity @s[type=player] run function hud:buff/update
# バフが一切残っていないならaec削除
    execute if predicate {condition:"entity_scores",entity:"this",scores:{buff_amount:0,atk_buff:0,mag_buff:0,dex_buff:0,max_hp_buff:0,int_buff:0,def_buff:0,spd_buff:0,crt_buff:0,luk_buff:0,acc_buff:0,resistance_melee_buff:0,resistance_magic_buff:0,resistance_ranged_buff:0,resistance_fire_buff:0,resistance_ice_buff:0,resistance_wind_buff:0,resistance_thunder_buff:0}} run function status:buff/remove/
# リセット
    execute on origin run tag @s remove context.origin
    kill @s[tag=buff.expired]
