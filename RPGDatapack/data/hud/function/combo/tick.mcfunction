# 先にリセット
    data remove storage combat: data.hud.combo
# ストライクゾーンの割合範囲取得
    scoreboard players operation #crt_max_ratio buffer = @s combo_crt_max
    scoreboard players operation #crt_max_ratio buffer *= #100 const
    scoreboard players operation #crt_max_ratio buffer /= @s max_combo_time

    scoreboard players operation #crt_min_ratio buffer = @s combo_crt_min
    scoreboard players operation #crt_min_ratio buffer *= #100 const
    scoreboard players operation #crt_min_ratio buffer /= @s max_combo_time
# ゲージを | 20本で埋める
    scoreboard players set #rec buffer 100
    function hud:combo/bar
    scoreboard players reset #rec buffer
# ストレージ
    scoreboard players operation #progress buffer = @s combo_time
    scoreboard players operation #progress buffer *= #100 const
    scoreboard players operation #progress buffer /= @s max_combo_time
    scoreboard players set #100 buffer 100
    execute store result storage combat: data.hud.combo.progress int 1 run scoreboard players operation #100 buffer -= #progress buffer
    data modify storage combat: data.hud.combo.space append value {"text":"\uF802"}
# data.combo.progress番目の | を赤く
    function hud:combo/mark_progress with storage combat: data.hud.combo
# リセット
    scoreboard players reset #progress buffer
    scoreboard players reset #100 buffer
    scoreboard players reset #crt_max_ratio buffer
    scoreboard players reset #crt_min_ratio buffer
