# すいじょうきばくはつ(直接攻撃された場合のみ)
    execute unless entity @s[tag=hurt.indirect] run playsound entity.explode hostile @a ~ ~ ~ 0.75 1.5
    playsound entity.player.hurt_freeze hostile @a ~ ~ ~ 2 1
    playsound entity.player.hurt_on_fire hostile @a ~ ~ ~ 1 1
