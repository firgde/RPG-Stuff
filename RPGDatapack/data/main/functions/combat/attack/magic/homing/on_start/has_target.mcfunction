# hasTargetに自分がプレイヤーを狙っているかを代入
    execute store result score @s hasTarget on target if entity @s[type=player]
# targetがいるなら優先度に加算
    execute if score @s hasTarget matches 1 run scoreboard players add @s homing_priority 3
# リセット
    scoreboard players reset @s hasTarget
