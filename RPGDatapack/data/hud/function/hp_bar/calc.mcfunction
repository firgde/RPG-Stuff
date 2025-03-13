# ダメージを受ける前の体力の割合
    scoreboard players operation @s hp_ratio = @s prev_hp
    scoreboard players operation @s hp_ratio *= #80 const
    scoreboard players operation @s hp_ratio /= @s max_hp
# 新しく攻撃されるならリセット
    execute if entity @s[tag=!hurt_last] run function hud:hp_bar/reset
# 名前
    data modify storage combat: data.hud.Name set from entity @s ArmorItems[3].components."minecraft:item_name"
# 現在体力の割合
    scoreboard players operation @s hp_ratio = @s hp
    scoreboard players operation @s hp_ratio *= #80 const
    scoreboard players operation @s hp_ratio /= @s max_hp
# HPバーの進行度合い
    execute store result score #prev hp_ratio run data get storage combat: data.hud.progress
    execute if score @s prev_hp = @s max_hp unless data storage combat: data.hud.progress run scoreboard players set #prev hp_ratio 80
    execute store result storage combat: data.hud.ratio int 1 run scoreboard players get @s hp_ratio
    execute if score @s max_hp matches 2147483647 run data modify storage combat: data.hud.ratio set value 80
