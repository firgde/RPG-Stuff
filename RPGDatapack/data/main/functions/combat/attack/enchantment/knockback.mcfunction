#さらにレベルで分岐
    execute if data storage damage: Damage[{lvl:1s,id:"knockback"}] run scoreboard players set #kbpowerx buffer 25
    execute if data storage damage: Damage[{lvl:2s,id:"knockback"}] run scoreboard players set #kbpowerx buffer 35
    execute if data storage damage: Damage[{lvl:3s,id:"knockback"}] run scoreboard players set #kbpowerx buffer 50
#ノックバック
    scoreboard players operation #kbpowerz buffer = #kbpowerx buffer
#そして適用
    execute as @e[tag=hurt] run function main:combat/damage/knockback
