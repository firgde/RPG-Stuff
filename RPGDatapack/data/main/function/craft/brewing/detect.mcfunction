# 醸造します
    tag @s add not_give
# どのinteractionがクリックされたか検知
    execute as @n[tag=brewing,type=interaction,distance=..6] store success score @s hasTarget on target if entity @s[type=player]
    execute as @n[tag=brewing,type=interaction,distance=..6,scores={hasTarget=1}] run tag @s add brewing.this
#全てに数値が存在するならポーション醸造
    execute at @n[tag=brewing.this] if data block ~ ~ ~ Items[{Slot:3b}] if data block ~ ~ ~ Items[{Slot:4b}] run function main:craft/brewing/brew
# リセット
    scoreboard players reset @e[tag=brewing.this] hasTarget
    tag @s remove not_give
    tag @e[tag=brewing.this] remove brewing.this
    advancement revoke @s only main:craft/brewing/trigger
