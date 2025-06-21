# 音
    playsound ogg:entity.player.attack.sweep1 player @a ~ ~ ~ 1 2.0
    playsound entity.player.attack.knockback player @a ~ ~ ~ 1 1.5
# パーティクル
    particle crit ~ ~0.5 ~ 0.1 0.1 0.1 0.5 10
# ノックバック
    scoreboard players set #kbPowerX buffer 10
    scoreboard players set #kbPowerY buffer 10
    scoreboard players set #kbPowerZ buffer 10
    execute at @a run function main:combat/damage/knockback
# 連撃interaction消す
    execute on passengers run kill @s
