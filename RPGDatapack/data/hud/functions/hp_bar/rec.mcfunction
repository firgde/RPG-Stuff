# ストレージに追加
    execute unless score #rec buffer matches 0 run data modify storage combat: data.hud.hpBar append value '{"text":"\\uE009"}'
    scoreboard players remove #rec buffer 1
# 再帰
    execute if score #rec buffer matches 1.. run function hud:hp_bar/rec
