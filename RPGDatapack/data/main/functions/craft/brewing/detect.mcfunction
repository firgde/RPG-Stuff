# 醸造します
    tag @s add not_give
# どのinteractionがクリックされたか検知
    execute as @e[tag=brewing,type=interaction,limit=1,distance=..6,sort=nearest] store success score @s hasTarget on target if entity @s[type=player]
    execute as @e[tag=brewing,type=interaction,limit=1,distance=..6,sort=nearest,scores={hasTarget=1}] run tag @s add brewing.this
#全てに数値が存在するならポーション醸造
    execute at @e[tag=brewing.this,sort=nearest,limit=1] if data block ~ ~ ~ Items[{Slot:3b}] if data block ~ ~ ~ Items[{Slot:4b}] run function main:craft/brewing/brew
# リセット
    scoreboard players reset #powder buffer
    scoreboard players reset #material buffer
    scoreboard players reset #powderLevel buffer
    scoreboard players reset @e[tag=brewing.this] hasTarget
    tag @s remove not_give
    tag @e[tag=brewing.this] remove brewing.this
    advancement revoke @s only main:craft/brewing/trigger
