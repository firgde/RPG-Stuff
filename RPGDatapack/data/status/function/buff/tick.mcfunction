# buff_timer減算
    scoreboard players remove @s buff_timer 1
# 属性デバフなら専用処理
    execute if entity @s[tag=debuff.element] run function #asset:combat/debuff/tick
# タイマーが0なら消す
    execute if score @s buff_timer matches ..0 run function status:buff/remove/
