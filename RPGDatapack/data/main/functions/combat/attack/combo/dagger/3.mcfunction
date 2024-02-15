# 音
    playsound ogg:entity.player.attack.sweep1 player @p ~ ~ ~ 1 1.9
# パーティクル
    particle crit ~ ~0.5 ~ 0.1 0.1 0.1 0.5 10
# ノックバック
    scoreboard players set #kbPowerX buffer 5
    scoreboard players set #kbPowerY buffer 3
    scoreboard players set #kbPowerZ buffer 5
    execute at @p run function main:combat/damage/knockback
