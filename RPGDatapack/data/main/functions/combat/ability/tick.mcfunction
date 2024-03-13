# 減算
    scoreboard players remove @s current_ability_cooldown 1
# HUDの処理
    function hud:cooldown/calc
# ゼロならリセット
    execute if score @s current_ability_cooldown matches 0 run function main:combat/ability/reset
