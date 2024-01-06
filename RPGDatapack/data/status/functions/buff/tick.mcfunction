# buff_timer減算
    scoreboard players remove @s buff_timer 1
# 属性デバフなら専用処理
    execute if entity @s[tag=debuff.fire] run function asset:combat/debuff/fire/tick
    execute if entity @s[tag=debuff.fire_fire] run function asset:combat/debuff/combine/fire/fire/tick
    execute if entity @s[tag=debuff.fire_thunder] run function asset:combat/debuff/combine/fire/thunder/tick
    execute if entity @s[tag=debuff.ice] run function asset:combat/debuff/ice/tick
    execute if entity @s[tag=debuff.ice_ice] run function asset:combat/debuff/combine/ice/ice/tick
    execute if entity @s[tag=debuff.ice_thunder] run function asset:combat/debuff/combine/ice/thunder/tick
    execute if entity @s[tag=debuff.wind] run function asset:combat/debuff/wind/tick
    execute if entity @s[tag=debuff.thunder] run function asset:combat/debuff/thunder/tick
# タイマーが0なら消す
    execute if score @s buff_timer matches ..0 run function status:buff/remove/
