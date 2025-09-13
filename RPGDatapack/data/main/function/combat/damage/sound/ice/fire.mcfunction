# すいじょうきばくはつ(直接攻撃された場合のみ)
    execute unless entity @s[tag=hurt.indirect] run playsound entity.explode hostile @a[limit=1] ~ ~ ~ 0.75 1.5
    playsound entity.player.hurt_freeze hostile @a[limit=1] ~ ~ ~ 2 1
    playsound entity.player.hurt_on_fire hostile @a[limit=1] ~ ~ ~ 1 1
