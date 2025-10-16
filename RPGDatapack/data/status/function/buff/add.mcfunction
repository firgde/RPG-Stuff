# 全十種加算
    scoreboard players operation @s atk_buff += @n[tag=buff.init] atk_buff
    scoreboard players operation @s mag_buff += @n[tag=buff.init] mag_buff
    scoreboard players operation @s dex_buff += @n[tag=buff.init] dex_buff
    scoreboard players operation @s max_hp_buff += @n[tag=buff.init] max_hp_buff
    scoreboard players operation @s int_buff += @n[tag=buff.init] int_buff
    scoreboard players operation @s def_buff += @n[tag=buff.init] def_buff
    scoreboard players operation @s spd_buff += @n[tag=buff.init] spd_buff
    scoreboard players operation @s crt_buff += @n[tag=buff.init] crt_buff
    scoreboard players operation @s luk_buff += @n[tag=buff.init] luk_buff
    scoreboard players operation @s acc_buff += @n[tag=buff.init] acc_buff
    scoreboard players operation @s resistance_melee_buff += @n[tag=buff.init] resistance_melee_buff
    scoreboard players operation @s resistance_magic_buff += @n[tag=buff.init] resistance_magic_buff
    scoreboard players operation @s resistance_ranged_buff += @n[tag=buff.init] resistance_ranged_buff
    scoreboard players operation @s resistance_fire_buff += @n[tag=buff.init] resistance_fire_buff
    scoreboard players operation @s resistance_ice_buff += @n[tag=buff.init] resistance_ice_buff
    scoreboard players operation @s resistance_wind_buff += @n[tag=buff.init] resistance_wind_buff
    scoreboard players operation @s resistance_thunder_buff += @n[tag=buff.init] resistance_thunder_buff
# タイマーも加算
    scoreboard players operation @s buff_timer_atk += @n[tag=buff.init] buff_timer_atk
    scoreboard players operation @s buff_timer_mag += @n[tag=buff.init] buff_timer_mag
    scoreboard players operation @s buff_timer_dex += @n[tag=buff.init] buff_timer_dex
    scoreboard players operation @s buff_timer_max_hp += @n[tag=buff.init] buff_timer_max_hp
    scoreboard players operation @s buff_timer_int += @n[tag=buff.init] buff_timer_int
    scoreboard players operation @s buff_timer_def += @n[tag=buff.init] buff_timer_def
    scoreboard players operation @s buff_timer_spd += @n[tag=buff.init] buff_timer_spd
    scoreboard players operation @s buff_timer_crt += @n[tag=buff.init] buff_timer_crt
    scoreboard players operation @s buff_timer_luk += @n[tag=buff.init] buff_timer_luk
    scoreboard players operation @s buff_timer_acc += @n[tag=buff.init] buff_timer_acc
    scoreboard players operation @s buff_timer_resistance_melee += @n[tag=buff.init] buff_timer_resistance_melee
    scoreboard players operation @s buff_timer_resistance_magic += @n[tag=buff.init] buff_timer_resistance_magic
    scoreboard players operation @s buff_timer_resistance_ranged += @n[tag=buff.init] buff_timer_resistance_ranged
    scoreboard players operation @s buff_timer_resistance_fire += @n[tag=buff.init] buff_timer_resistance_fire
    scoreboard players operation @s buff_timer_resistance_ice += @n[tag=buff.init] buff_timer_resistance_ice
    scoreboard players operation @s buff_timer_resistance_wind += @n[tag=buff.init] buff_timer_resistance_wind
    scoreboard players operation @s buff_timer_resistance_thunder += @n[tag=buff.init] buff_timer_resistance_thunder
    scoreboard players operation @s buff_timer_element += @n[tag=buff.init] buff_timer_element

# ストレージに現在の残り時間を新しい最大値として代入（効果時間に変化があったもののみ）
    # execute if score @n[tag=buff.init] buff_timer_atk matches 1.. store result storage player:buff data.duration.atk int 1 run scoreboard players get @s buff_timer_atk
    # execute if score @n[tag=buff.init] buff_timer_mag matches 1.. store result storage player:buff data.duration.mag int 1 run scoreboard players get @s buff_timer_mag
    # execute if score @n[tag=buff.init] buff_timer_dex matches 1.. store result storage player:buff data.duration.dex int 1 run scoreboard players get @s buff_timer_dex
    # execute if score @n[tag=buff.init] buff_timer_max_hp matches 1.. store result storage player:buff data.duration.max_hp int 1 run scoreboard players get @s buff_timer_max_hp
    # execute if score @n[tag=buff.init] buff_timer_int matches 1.. store result storage player:buff data.duration.int int 1 run scoreboard players get @s buff_timer_int
    # execute if score @n[tag=buff.init] buff_timer_def matches 1.. store result storage player:buff data.duration.def int 1 run scoreboard players get @s buff_timer_def
    # execute if score @n[tag=buff.init] buff_timer_spd matches 1.. store result storage player:buff data.duration.spd int 1 run scoreboard players get @s buff_timer_spd
    # execute if score @n[tag=buff.init] buff_timer_crt matches 1.. store result storage player:buff data.duration.crt int 1 run scoreboard players get @s buff_timer_crt
    # execute if score @n[tag=buff.init] buff_timer_luk matches 1.. store result storage player:buff data.duration.luk int 1 run scoreboard players get @s buff_timer_luk
    # execute if score @n[tag=buff.init] buff_timer_acc matches 1.. store result storage player:buff data.duration.acc int 1 run scoreboard players get @s buff_timer_acc
    # execute if score @n[tag=buff.init] buff_timer_resistance_melee matches 1.. store result storage player:buff data.duration.resistance_melee int 1 run scoreboard players get @s buff_timer_resistance_melee
    # execute if score @n[tag=buff.init] buff_timer_resistance_magic matches 1.. store result storage player:buff data.duration.resistance_magic int 1 run scoreboard players get @s buff_timer_resistance_magic
    # execute if score @n[tag=buff.init] buff_timer_resistance_ranged matches 1.. store result storage player:buff data.duration.resistance_ranged int 1 run scoreboard players get @s buff_timer_resistance_ranged
    # execute if score @n[tag=buff.init] buff_timer_resistance_fire matches 1.. store result storage player:buff data.duration.resistance_fire int 1 run scoreboard players get @s buff_timer_resistance_fire
    # execute if score @n[tag=buff.init] buff_timer_resistance_ice matches 1.. store result storage player:buff data.duration.resistance_ice int 1 run scoreboard players get @s buff_timer_resistance_ice
    # execute if score @n[tag=buff.init] buff_timer_resistance_wind matches 1.. store result storage player:buff data.duration.resistance_wind int 1 run scoreboard players get @s buff_timer_resistance_wind
    # execute if score @n[tag=buff.init] buff_timer_resistance_thunder matches 1.. store result storage player:buff data.duration.resistance_thunder int 1 run scoreboard players get @s buff_timer_resistance_thunder
    # execute if score @n[tag=buff.init] buff_timer_element matches 1.. store result storage player:buff data.duration.element int 1 run scoreboard players get @s buff_timer_element

# ステータス更新
    function status:update/
