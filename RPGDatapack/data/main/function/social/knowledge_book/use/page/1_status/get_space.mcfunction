# ステータスの桁数を取得
    execute if score @a[limit=1] atk_base matches 100.. run data modify storage space: text.atk set value ""
    execute if score @a[limit=1] atk_base matches 10..99 run data modify storage space: text.atk set value ""
    execute if score @a[limit=1] atk_base matches 0..9 run data modify storage space: text.atk set value ""

    execute if score @a[limit=1] mag_base matches 100.. run data modify storage space: text.mag set value ""
    execute if score @a[limit=1] mag_base matches 10..99 run data modify storage space: text.mag set value ""
    execute if score @a[limit=1] mag_base matches 0..9 run data modify storage space: text.mag set value ""

    execute if score @a[limit=1] dex_base matches 100.. run data modify storage space: text.dex set value ""
    execute if score @a[limit=1] dex_base matches 10..99 run data modify storage space: text.dex set value ""
    execute if score @a[limit=1] dex_base matches 0..9 run data modify storage space: text.dex set value ""

    execute if score @a[limit=1] max_hp_base matches 100.. run data modify storage space: text.hp set value ""
    execute if score @a[limit=1] max_hp_base matches 10..99 run data modify storage space: text.hp set value ""
    execute if score @a[limit=1] max_hp_base matches 0..9 run data modify storage space: text.hp set value ""

    execute if score @a[limit=1] int_base matches 100.. run data modify storage space: text.int set value ""
    execute if score @a[limit=1] int_base matches 10..99 run data modify storage space: text.int set value ""
    execute if score @a[limit=1] int_base matches 0..9 run data modify storage space: text.int set value ""
