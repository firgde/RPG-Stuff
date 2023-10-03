# 音
    playsound item.shield.block player @p ~ ~ ~ 1 0.5
    playsound entity.zombie.attack_wooden_door player @p ~ ~ ~ 1 1.5
    playsound entity.player.attack.knockback player @p ~ ~ ~ 1 1
# パーティクル
    execute rotated ~ 0 run particle explosion ~ ~1 ~
# ノックバック
    scoreboard players set $kbPowerX buffer 20
    scoreboard players set $kbPowerY buffer 10
    scoreboard players set $kbPowerZ buffer 20
    execute at @p run function main:combat/damage/knockback
# 連撃interaction消す
    execute on passengers run kill @s
