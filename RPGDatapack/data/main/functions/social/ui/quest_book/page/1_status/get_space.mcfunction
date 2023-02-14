#ステータスの桁数を取得
    execute if score @p atk_base matches 100.. run data modify storage space: text.atk set value ""
    execute if score @p atk_base matches 10..99 run data modify storage space: text.atk set value ""
    execute if score @p atk_base matches 0..9 run data modify storage space: text.atk set value ""

    execute if score @p mag_base matches 100.. run data modify storage space: text.mag set value ""
    execute if score @p mag_base matches 10..99 run data modify storage space: text.mag set value ""
    execute if score @p mag_base matches 0..9 run data modify storage space: text.mag set value ""

    execute if score @p dex_base matches 100.. run data modify storage space: text.dex set value ""
    execute if score @p dex_base matches 10..99 run data modify storage space: text.dex set value ""
    execute if score @p dex_base matches 0..9 run data modify storage space: text.dex set value ""

    execute if score @p max_hp_base matches 100.. run data modify storage space: text.hp set value ""
    execute if score @p max_hp_base matches 10..99 run data modify storage space: text.hp set value ""
    execute if score @p max_hp_base matches 0..9 run data modify storage space: text.hp set value ""

    execute if score @p int_base matches 100.. run data modify storage space: text.int set value ""
    execute if score @p int_base matches 10..99 run data modify storage space: text.int set value ""
    execute if score @p int_base matches 0..9 run data modify storage space: text.int set value ""
