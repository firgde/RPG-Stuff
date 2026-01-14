# crtの範囲内か否か
    function main:combat/attack/combo/check_time
# 連撃延長
    scoreboard players operation @s combo_time = @s max_combo_time
# 連撃回数増やす
    scoreboard players add @s combo_count 1
# 武器種によって分岐
    execute if items entity @s[scores={combo_time=1..}] weapon.mainhand *[custom_data~{weaponType:0}] at @s run function main:combat/attack/combo/sword/
    execute if items entity @s[scores={combo_time=1..}] weapon.mainhand *[custom_data~{weaponType:1}] at @s run function main:combat/attack/combo/hammer/
    # execute if items entity @s[scores={combo_time=1..}] weapon.mainhand *[custom_data~{weaponType:2}] at @s run function main:combat/attack/combo/wand/
    # execute if items entity @s[scores={combo_time=1..}] weapon.mainhand *[custom_data~{weaponType:3}] at @s run function main:combat/attack/combo/bow/
    execute if items entity @s[scores={combo_time=1..}] weapon.mainhand *[custom_data~{weaponType:4}] at @s run function main:combat/attack/combo/dagger/
# 連撃回数が最大値になったら連撃終了
    execute if score @s combo_count >= @s max_combo_count run function main:combat/attack/combo/finish
# リセット
    scoreboard players reset @s combo_damage_multiplier
    scoreboard players reset @s dealtDamage
