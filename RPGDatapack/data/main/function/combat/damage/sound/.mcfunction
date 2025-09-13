# メイン属性によって分岐
    execute if score #main_element buffer matches 1 run function main:combat/damage/sound/fire/
    execute if score #main_element buffer matches 2 run function main:combat/damage/sound/ice/
    execute if score #main_element buffer matches 3 run function main:combat/damage/sound/wind/
    execute if score #main_element buffer matches 4 run function main:combat/damage/sound/thunder/
# 合成属性でないならそのままplaysound
    execute if score #damage_type buffer matches 1 run playsound entity.player.hurt_on_fire hostile @a[limit=1] ~ ~ ~ 0.5 1
    execute if score #damage_type buffer matches 2 run playsound entity.firework_rocket.blast hostile @a[limit=1] ~ ~ ~ 0.5 2
    execute if score #damage_type buffer matches 2 run playsound entity.player.hurt_freeze hostile @a[limit=1] ~ ~ ~ 0.5 1
    execute if score #damage_type buffer matches 3 run playsound entity.wither.shoot hostile @a[limit=1] ~ ~ ~ 0.3 2
    execute if score #damage_type buffer matches 4 run playsound entity.firework_rocket.twinkle_far hostile @a[limit=1] ~ ~ ~ 0.5 2
