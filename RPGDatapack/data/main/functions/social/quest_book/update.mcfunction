#ステータスの桁数を取得
    execute if score @s atk_base matches 100.. run data modify storage space: text.atk set value ""
    execute if score @s atk_base matches 10..99 run data modify storage space: text.atk set value ""
    execute if score @s atk_base matches 0..9 run data modify storage space: text.atk set value ""

    execute if score @s mag_base matches 100.. run data modify storage space: text.mag set value ""
    execute if score @s mag_base matches 10..99 run data modify storage space: text.mag set value ""
    execute if score @s mag_base matches 0..9 run data modify storage space: text.mag set value ""

    execute if score @s tec_base matches 100.. run data modify storage space: text.tec set value ""
    execute if score @s tec_base matches 10..99 run data modify storage space: text.tec set value ""
    execute if score @s tec_base matches 0..9 run data modify storage space: text.tec set value ""

    execute if score @s max_hp_base matches 100.. run data modify storage space: text.hp set value ""
    execute if score @s max_hp_base matches 10..99 run data modify storage space: text.hp set value ""
    execute if score @s max_hp_base matches 0..9 run data modify storage space: text.hp set value ""

    execute if score @s int_base matches 100.. run data modify storage space: text.int set value ""
    execute if score @s int_base matches 10..99 run data modify storage space: text.int set value ""
    execute if score @s int_base matches 0..9 run data modify storage space: text.int set value ""
#ｱｲﾃﾑﾓﾃﾞｨﾌｧｲｱを適用
    item modify entity @s weapon.mainhand main:social/update_book
