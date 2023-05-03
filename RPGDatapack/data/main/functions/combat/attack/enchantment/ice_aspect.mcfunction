# さらにレベルで分岐
    execute if data storage damage: data.Damage[{lvl:1s,id:"ice_aspect"}] run data modify storage damage: data.Damage set value {debuffTimer:40,buffAmount:-5}
    execute if data storage damage: data.Damage[{lvl:2s,id:"ice_aspect"}] run data modify storage damage: data.Damage set value {debuffTimer:80,buffAmount:-10}
    execute if data storage damage: data.Damage[{lvl:3s,id:"ice_aspect"}] run data modify storage damage: data.Damage set value {debuffTimer:80,buffAmount:-20}
# 表示する色
    scoreboard players set $damagetype buffer 3
# そして適用
    execute as @e[tag=hurt] run function asset:combat/debuff/ice/apply
