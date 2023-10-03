# 音
    playsound entity.player.attack.sweep player @p ~ ~ ~ 1 1.3
# パーティクル
    execute rotated ~ 0 run particle sweep_attack ~ ~1 ~
# ヒットストップ
    data modify entity @s Motion set value [0.0f,0.0f,0.0f]
