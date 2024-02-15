# 醸造台に何個アイテムが入っているか見る
    execute as @e[tag=brewing,type=interaction,limit=1,distance=..6,sort=nearest] store success score @s hasTarget on target if entity @s[type=player]
    execute at @e[tag=brewing,type=interaction,limit=1,distance=..6,sort=nearest,scores={hasTarget=1}] store result score #itemCount buffer run data get block ~ ~ ~ Items
# 左右どっちでクリックしたかで分岐
    execute if entity @s[advancements={main:craft/brewing/interact={right=true}}] at @e[tag=brewing,limit=1,distance=..6,sort=nearest,scores={hasTarget=1}] run function main:craft/brewing/place/generic
    execute if entity @s[advancements={main:craft/brewing/interact={left=true}}] at @e[tag=brewing,limit=1,distance=..6,sort=nearest,scores={hasTarget=1}] run function main:craft/brewing/pick
# リセット
    scoreboard players reset #itemCount buffer
    scoreboard players reset @e[scores={hasTarget=1..}] hasTarget
    advancement revoke @s only main:craft/brewing/interact
