# 音
    playsound ogg:entity.player.attack.sweep1 player @a ~ ~ ~ 1 1.7
    playsound entity.player.attack.knockback player @a ~ ~ ~ 1 1
# パーティクル
    execute rotated ~ 0 run particle sweep_attack ~ ~1 ~
# ノックバック
    scoreboard players set #kbPowerX buffer 10
    scoreboard players set #kbPowerY buffer 10
    scoreboard players set #kbPowerZ buffer 10
    execute at @a run function main:combat/damage/knockback
# 連撃interaction消す
    execute on passengers run kill @s
