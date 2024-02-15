# さらにレベルで分岐
    execute store result score #lvl buffer run data get storage combat: data.Damage[{id:"fire_aspect"}].lvl
    execute if score #lvl buffer matches 1 run data modify storage combat: data.Damage set value {debuffTimer:80,buff_amount:0}
    execute if score #lvl buffer matches 2 run data modify storage combat: data.Damage set value {debuffTimer:120,buff_amount:0}
    execute if score #lvl buffer matches 3 run data modify storage combat: data.Damage set value {debuffTimer:120,buff_amount:0}
# Lv1と2で5%,Lv3で10%のダメージ
    execute if score #lvl buffer matches 1 store result storage combat: data.Damage.buff_amount int 0.05 run scoreboard players get @p atk
    execute if score #lvl buffer matches 2 store result storage combat: data.Damage.buff_amount int 0.05 run scoreboard players get @p atk
    execute if score #lvl buffer matches 3 store result storage combat: data.Damage.buff_amount int 0.1 run scoreboard players get @p atk
# 表示する色
    scoreboard players set #damagetype buffer 2
# そして適用
    execute as @e[tag=hurt] run function asset:combat/debuff/fire/apply
# リセット
    scoreboard players reset #lvl buffer
