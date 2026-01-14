# ダメージ
    function main:combat/attack/combo/sword/damage
# 音
    playsound ogg:entity.player.attack.sweep1 player @s ~ ~ ~ 1 1.3
# パーティクル
    execute positioned ^ ^ ^1.5 rotated ~ 0 run particle sweep_attack ~ ~1 ~
