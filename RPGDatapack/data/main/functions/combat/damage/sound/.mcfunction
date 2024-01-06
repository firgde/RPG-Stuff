# メイン属性によって分岐
    execute if score $mainElement buffer matches 1 run function main:combat/damage/sound/fire/
    execute if score $mainElement buffer matches 2 run function main:combat/damage/sound/ice/
    execute if score $mainElement buffer matches 3 run function main:combat/damage/sound/wind/
    execute if score $mainElement buffer matches 4 run function main:combat/damage/sound/thunder/
# 合成属性でないならそのままplaysound
    execute if score $damageType buffer matches 1 run playsound entity.player.hurt_on_fire hostile @p ~ ~ ~ 0.5 1
    execute if score $damageType buffer matches 2 run playsound entity.firework_rocket.blast hostile @p ~ ~ ~ 0.5 2
    execute if score $damageType buffer matches 2 run playsound entity.player.hurt_freeze hostile @p ~ ~ ~ 0.5 1
    execute if score $damageType buffer matches 3 run playsound entity.wither.shoot hostile @p ~ ~ ~ 0.3 2
    execute if score $damageType buffer matches 4 run playsound entity.firework_rocket.twinkle_far hostile @p ~ ~ ~ 0.5 2
