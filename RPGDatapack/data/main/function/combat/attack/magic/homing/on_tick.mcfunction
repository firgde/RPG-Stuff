#視線上から半径7ブロックの敵にタグ付け
    execute positioned ^ ^ ^7.1 run tag @e[distance=..7,team=hostile] add homingCandidate

    # 視野角によって加点
    #視野角60°以内なら+2(acc>=100のみ)
    execute if score @s acc matches 100.. positioned ^ ^ ^10.1 as @e[tag=homingCandidate,distance=..10] positioned ^ ^ ^-10.1 rotated ~60 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ if entity @s[distance=..1000] positioned ~ ~1.6 ~ positioned ^-1000.1 ^ ^ rotated ~-120 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run scoreboard players add @s homing_priority 2

    #視野角45°以内なら+4(acc>=75のみ)
    execute if score @s acc matches 75.. positioned ^ ^ ^10.1 as @e[tag=homingCandidate,distance=..10] positioned ^ ^ ^-10.1 rotated ~45 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ if entity @s[distance=..1000] positioned ~ ~1.6 ~ positioned ^-1000.1 ^ ^ rotated ~-90 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run scoreboard players add @s homing_priority 4

    #視野角15°以内なら+6(acc>=50のみ)
    execute if score @s acc matches 50.. positioned ^ ^ ^10.1 as @e[tag=homingCandidate,distance=..10] positioned ^ ^ ^-10.1 rotated ~15 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ if entity @s[distance=..1000] positioned ~ ~1.6 ~ positioned ^-1000.1 ^ ^ rotated ~-30 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run scoreboard players add @s homing_priority 6

    #視野角5°以内なら+8
    execute positioned ^ ^ ^10.1 as @e[tag=homingCandidate,distance=..10] positioned ^ ^ ^-10.1 rotated ~5 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ if entity @s[distance=..1000] positioned ~ ~1.6 ~ positioned ^-1000.1 ^ ^ rotated ~-10 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run scoreboard players add @s homing_priority 8

# 一体に絞る
    tag @e[tag=homingCandidate,distance=..20,limit=1,sort=nearest] add homingTarget
    tag @e[tag=homingCandidate,distance=..20] remove homingCandidate

# 自分から見てどこにいるかによって回転
    #対象が右に居たら右に旋回
        execute facing entity @e[team=hostile,limit=1,tag=homingTarget,sort=nearest] eyes positioned ^0.3 ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5] at @s run tp @s ~ ~ ~ ~1.0 ~
    #対象が左に居たら左に旋回
        execute facing entity @e[team=hostile,limit=1,tag=homingTarget,sort=nearest] eyes positioned ^-0.3 ^ ^3.0 rotated as @s positioned ^-4.0 ^ ^ if entity @s[distance=..5] at @s run tp @s ~ ~ ~ ~-1.0 ~
# リセット
    tag @e remove homingTarget
