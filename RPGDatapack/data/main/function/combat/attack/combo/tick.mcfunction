# タイマー減らす
    scoreboard players remove @s combo_time 1
# 連撃可能なタイミング
    execute if score @s combo_time <= @s combo_crt_max if score @s combo_time >= @s combo_crt_min run tag @s add atk_combo
    execute if predicate {condition:"inverted",term:{condition:"entity_scores",entity:"this",scores:{combo_time:{min:{type:"score",target:"this",score:"combo_crt_min"},max:{type:"score",target:"this",score:"combo_crt_max"}}}}} run tag @s remove atk_combo
# 0なら終了
    execute if score @s combo_time matches 0 run function main:combat/attack/combo/finish
