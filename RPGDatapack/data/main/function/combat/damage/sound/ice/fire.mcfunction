# すいじょうきばくはつ(直接攻撃された場合のみ)
    execute unless entity @s[tag=hurt.indirect] run playsound entity.generic.explode hostile @p ~ ~ ~ 0.75 1.5
    playsound entity.player.hurt_freeze hostile @p ~ ~ ~ 2 1
    playsound entity.player.hurt_on_fire hostile @p ~ ~ ~ 1 1
