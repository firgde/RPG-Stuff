# さらにレベルで分岐
    execute if data storage damage: data.Damage[{lvl:1s}] run data merge storage damage: {Damage:{debuffTimer:40,buffAmount:5}}
    execute if data storage damage: data.Damage[{lvl:2s}] run data merge storage damage: {Damage:{debuffTimer:80,buffAmount:10}}
    execute if data storage damage: data.Damage[{lvl:3s}] run data merge storage damage: {Damage:{debuffTimer:80,buffAmount:20}}
# 表示する色
    scoreboard players set #damagetype buffer 4
# そして適用
    execute as @e[tag=hurt] run function asset:combat/debuff/thunder/apply
