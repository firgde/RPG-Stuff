#さらにレベルで分岐
    execute store result score $lvl buffer run data get storage damage: Damage[{id:"fire_aspect"}].lvl
    execute if score $lvl buffer matches 1 run data modify storage damage: Damage set value {debuffTimer:80,debuffDamage:0}
    execute if score $lvl buffer matches 2 run data modify storage damage: Damage set value {debuffTimer:120,debuffDamage:0}
    execute if score $lvl buffer matches 3 run data modify storage damage: Damage set value {debuffTimer:120,debuffDamage:0}
#Lv1と2で5%,Lv3で10%のダメージ
    execute if score $lvl buffer matches 1 store result storage damage: Damage.debuffDamage int 0.05 run scoreboard players get @p[limit=1,tag=attacker] atk
    execute if score $lvl buffer matches 2 store result storage damage: Damage.debuffDamage int 0.05 run scoreboard players get @p[limit=1,tag=attacker] atk
    execute if score $lvl buffer matches 3 store result storage damage: Damage.debuffDamage int 0.1 run scoreboard players get @p[limit=1,tag=attacker] atk
#表示する色
    scoreboard players set $damagecolor buffer 2
#そして適用
    execute as @e[tag=hurt] run function asset:combat/debuff/fire/apply
#リセット
    scoreboard players reset $lvl buffer
