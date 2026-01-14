# ダメージ
    function main:combat/attack/combo/dagger/damage
# 音
    playsound ogg:entity.player.attack.sweep1 player @s ~ ~ ~ 1 2.0
    playsound entity.player.attack.knockback player @a[limit=1] ~ ~ ~ 1 1.5
# パーティクル
    execute positioned ^ ^ ^1.5 run particle crit ~ ~1 ~ 0.1 0.1 0.1 0.5 10
