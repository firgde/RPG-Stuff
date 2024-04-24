# ストレージを一旦リセット
    data remove storage combat: data.hud.hpBar
# 名前
    data modify storage combat: data.hud.Name set from entity @s ArmorItems[3].components.item_name
# 残り体力の割合を5%単位で算出
    scoreboard players operation @s hp_ratio = @s hp
    scoreboard players operation @s hp_ratio *= #20 const
    execute store result score #rec buffer run scoreboard players operation @s hp_ratio /= @s max_hp
    scoreboard players operation @s hp_ratio = #rec buffer
# 割合の分だけストレージにバーを追加
    function hud:hp_bar/rec
# 減った分を追加
    scoreboard players set #20 buffer 20
    execute store result score #rec buffer run scoreboard players operation #20 buffer -= @s hp_ratio
    function hud:hp_bar/rec_removed
# リセット
    scoreboard players reset #20 buffer
    scoreboard players reset @s hp_ratio
    scoreboard players reset #rec buffer
# 5秒後に消える
    schedule function hud:hp_bar/reset 100t replace
