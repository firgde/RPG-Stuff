# ストレージのデータ
    data remove storage item: Item
    data modify storage item: Item.count set value 1b
# シュル箱のアイテム
    execute if entity @s[tag=!not_give] run data remove block 0 -59 0 Items
# 表示用スコア
    scoreboard players reset #atk_bonus_enchant buffer
    scoreboard players reset #mag_bonus_enchant buffer
    scoreboard players reset #dex_bonus_enchant buffer
    scoreboard players reset #hp_bonus_enchant buffer
    scoreboard players reset #int_bonus_enchant buffer
    scoreboard players reset #def_bonus_enchant buffer
    scoreboard players reset #spd_bonus_enchant buffer
    scoreboard players reset #crt_bonus_enchant buffer
    scoreboard players reset #luk_bonus_enchant buffer
    scoreboard players reset #acc_bonus_enchant buffer
