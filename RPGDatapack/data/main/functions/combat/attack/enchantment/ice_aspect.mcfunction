#さらにレベルで分岐
    execute if data storage damage: Damage[{lvl:1s,id:"ice_aspect"}] run data modify storage damage: Damage set value {debuffTimer:40,buffAmount:-5}
    execute if data storage damage: Damage[{lvl:2s,id:"ice_aspect"}] run data modify storage damage: Damage set value {debuffTimer:80,buffAmount:-10}
    execute if data storage damage: Damage[{lvl:3s,id:"ice_aspect"}] run data modify storage damage: Damage set value {debuffTimer:80,buffAmount:-20}
#表示する色
    scoreboard players set $damagecolor buffer 3
#そして適用
    execute as @e[tag=hurt] run function main:combat/debuff/ice
