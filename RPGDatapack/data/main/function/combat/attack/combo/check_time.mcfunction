# combo_time > combo_crt_max => 早すぎるので連撃終了
    execute if score @s combo_time > @s combo_crt_max run function main:combat/attack/combo/finish
# combo_time < combo_crt_min => 普通の連撃
    execute if score @s combo_time < @s combo_crt_min run scoreboard players set @s combo_damage_multiplier 100
# combo_crt_min <= combo_time <= combo_time_crt => バッチリ！クリティカルヒット
    execute if entity @s[tag=atk_combo] run function main:combat/attack/combo/crit
