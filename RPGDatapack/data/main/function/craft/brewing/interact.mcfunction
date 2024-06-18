# 醸造台に何個アイテムが入っているか見る
    execute as @n[tag=brewing,type=interaction,distance=..6] store success score @s hasTarget on target if entity @s[type=player]
    execute at @n[tag=brewing,type=interaction,distance=..6,scores={hasTarget=1}] store result score #itemCount buffer run data get block ~ ~ ~ Items
# 左右どっちでクリックしたかで分岐
    execute if entity @s[advancements={main:craft/brewing/interact={right=true}}] at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run function main:craft/brewing/place/generic
    execute if entity @s[advancements={main:craft/brewing/interact={left=true}}] at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run function main:craft/brewing/pick
# リセット
    scoreboard players reset #itemCount buffer
    scoreboard players reset #modify_count buffer
    scoreboard players reset @e[scores={hasTarget=1..}] hasTarget
    advancement revoke @s only main:craft/brewing/interact
