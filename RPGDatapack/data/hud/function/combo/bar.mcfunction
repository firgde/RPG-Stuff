# ストライクゾーンなら黄色くマーク
    execute if score #rec buffer < #crt_min_ratio buffer run data modify storage combat: data.hud.combo.list append value {"text":"|","color":"yellow"}
    execute if score #rec buffer > #crt_max_ratio buffer run data modify storage combat: data.hud.combo.list append value {"text":"|","color":"dark_gray"}
    execute if score #rec buffer >= #crt_min_ratio buffer if score #rec buffer <= #crt_max_ratio buffer run data modify storage combat: data.hud.combo.list append value {"text":"|","color":"gold"}
    data modify storage combat: data.hud.combo.space append value {"text":"\uF801"}

    scoreboard players remove #rec buffer 1
    execute if score #rec buffer matches 1.. run function hud:combo/bar
