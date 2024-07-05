# タイマー減算
    scoreboard players remove @s combat_timer 1
# 敵の体力表示
    execute if entity @p[tag=in_combat] run function hud:hp_bar/tick
# 0なら戦闘終了
    execute if score @s combat_timer matches 0 run function hud:hp_bar/reset
