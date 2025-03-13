# タイマー減算
    scoreboard players remove @s combat_timer 1
# 近くに敵がいるならタイマー加算
    execute at @s if entity @n[distance=..15,team=hostile,scores={max_hp=..2147483646}] run scoreboard players add @s combat_timer 1
# 敵の体力表示
    function hud:hp_bar/tick
# 0なら戦闘終了
    execute if score @s combat_timer matches 0 run function hud:hp_bar/reset
