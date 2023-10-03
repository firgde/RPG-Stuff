# 音
    playsound entity.player.attack.sweep player @p ~ ~ ~ 1 1.75
# パーティクル
    particle crit ~ ~0.5 ~ 0.1 0.1 0.1 0.5 10
# ノックバック
    scoreboard players set $kbPowerX buffer 3
    scoreboard players set $kbPowerY buffer 2
    scoreboard players set $kbPowerZ buffer 3
    execute at @p run function main:combat/damage/knockback
