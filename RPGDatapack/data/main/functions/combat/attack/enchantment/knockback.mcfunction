# さらにレベルで分岐
    execute if data storage combat: [{lvl:1s,id:"knockback"}] run scoreboard players set $kbPowerX buffer 25
    execute if data storage combat: [{lvl:2s,id:"knockback"}] run scoreboard players set $kbPowerX buffer 35
    execute if data storage combat: [{lvl:3s,id:"knockback"}] run scoreboard players set $kbPowerX buffer 50
# ノックバック
    scoreboard players operation $kbPowerZ buffer = $kbPowerX buffer
# そして適用
    execute as @e[tag=hurt] run function main:combat/damage/knockback
