# ジャンプ力と移動速度を0に
    attribute @s generic.movement_speed modifier add movement_lock -1024 add_value
    attribute @s generic.jump_strength modifier add jump_lock -1024 add_value
# ダイアログ検知interaction
    #会話したnpc検知
    execute store result score #clickTime buffer run time query gametime
    execute at @s as @e[distance=..5,tag=npc.interaction] store result score @s timestamp run data get entity @s interaction.timestamp
    execute at @s as @e[tag=npc.interaction,distance=..5] if score @s timestamp = #clickTime buffer run tag @s add dialogue.target
    #分岐してダイアログ開始
    execute as @n[tag=dialogue.target] run function #asset:social/dialogue
# リセット
    tag @n[tag=dialogue.target] remove dialogue.target
    scoreboard players reset #clickTime buffer
    advancement revoke @s only main:social/dialogue
