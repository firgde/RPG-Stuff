# buff_timer減算
    scoreboard players remove @s buff_timer 1
# 紐づけ検知
    execute store success score @s buffer on origin unless entity @s[team=hostile]
    execute unless score @s buffer matches 0 run kill @s
# 属性デバフなら専用処理
    execute if entity @s[tag=debuff.element] if score @s buffer matches 0 run function #asset:combat/debuff/tick
# タイマーが0なら消す
    execute if score @s buff_timer matches ..0 run function status:buff/remove/
# リセット
    scoreboard players reset @s buffer
