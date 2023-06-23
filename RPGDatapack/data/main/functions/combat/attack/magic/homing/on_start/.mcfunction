### 召喚時に敵に優先順位をつけ、大まかにターゲットを決める
    #視線上から半径7ブロックの敵にタグ付け
    execute positioned ^ ^ ^7.1 run tag @e[distance=..7,team=hostile] add homingCandidate
    scoreboard players set @e[tag=homingCandidate] homing_priority 0
    # say Candidates: @e[tag=homingCandidate]

    #加点処理
    # 視野角のあれこれ
    #視野角60°以内なら+2(acc>=100のみ)
    execute if score @s acc matches 100.. positioned ^ ^ ^10.1 as @e[tag=homingCandidate,distance=..10] positioned ^ ^ ^-10.1 rotated ~60 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ if entity @s[distance=..1000] positioned ~ ~1.6 ~ positioned ^-1000.1 ^ ^ rotated ~-120 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run scoreboard players add @s homing_priority 2
    #視野角45°以内なら+4(acc>=75のみ)
    execute if score @s acc matches 75.. positioned ^ ^ ^10.1 as @e[tag=homingCandidate,distance=..10] positioned ^ ^ ^-10.1 rotated ~45 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ if entity @s[distance=..1000] positioned ~ ~1.6 ~ positioned ^-1000.1 ^ ^ rotated ~-90 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run scoreboard players add @s homing_priority 4
    #視野角15°以内なら+6(acc>=50のみ)
    execute if score @s acc matches 50.. positioned ^ ^ ^10.1 as @e[tag=homingCandidate,distance=..10] positioned ^ ^ ^-10.1 rotated ~15 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ if entity @s[distance=..1000] positioned ~ ~1.6 ~ positioned ^-1000.1 ^ ^ rotated ~-30 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run scoreboard players add @s homing_priority 6
    #視野角5°以内なら+10
    execute positioned ^ ^ ^10.1 as @e[tag=homingCandidate,distance=..10] positioned ^ ^ ^-10.1 rotated ~5 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ if entity @s[distance=..1000] positioned ~ ~1.6 ~ positioned ^-1000.1 ^ ^ rotated ~-10 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run scoreboard players add @s homing_priority 10

    # 距離のあれこれ
    #7ブロック以上離れてるなら-5
    execute as @e[tag=homingCandidate] at @s if entity @p[distance=7..] run scoreboard players remove @s homing_priority 5
    #5ブロック以内なら+1
    execute as @e[tag=homingCandidate] at @s if entity @p[distance=..5] run scoreboard players add @s homing_priority 1
    #3ブロック以内なら+3
    execute as @e[tag=homingCandidate] at @s if entity @p[distance=..3] run scoreboard players add @s homing_priority 3
    #1ブロック以内なら+5
    execute as @e[tag=homingCandidate] at @s if entity @p[distance=..1] run scoreboard players add @s homing_priority 5

    # プレイヤーを狙っているなら+3
    execute as @e[tag=homingCandidate] run function main:combat/attack/magic/homing/on_start/has_target

    # ボスなら+7
    execute as @e[tag=homingCandidate,tag=boss] run scoreboard players add @s homing_priority 7

# 優先度が1以上の候補を見てスコアが一番高いMobにTargetタグ付与
    execute as @e[tag=homingCandidate] if score @s homing_priority matches 1.. run function main:combat/attack/magic/homing/specify/main

    # say Target: @e[tag=homingTarget]

# Targetに向く
    execute facing entity @e[tag=homingTarget,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
    #自分のRotationをプレイヤーのRotationとの平均値に
    execute store result score $rot buffer run data get entity @s Rotation[0] 100
    execute store result score $playerRot buffer run data get entity @p Rotation[0] 100
    execute if score $rot buffer matches 1.. if score $playerRot buffer matches ..-1 run scoreboard players operation $playerRot buffer *= $-1 const
    execute if score $rot buffer matches ..-1 if score $playerRot buffer matches 1.. run scoreboard players operation $playerRot buffer *= $-1 const
    scoreboard players operation $rot buffer += $playerRot buffer
    execute unless score $rot buffer = $playerRot buffer store result entity @s Rotation[0] float 0.005 run scoreboard players get $rot buffer
    #Pitch補正
    data modify entity @s Rotation[1] set from entity @p Rotation[1]

# リセット
    scoreboard players reset $rot buffer
    scoreboard players reset $playerRot buffer
    scoreboard players reset @e[tag=homingCandidate] homing_priority
    tag @e[tag=homingCandidate] remove target
    tag @e[tag=homingCandidate] remove homingTarget
    tag @e[tag=homingCandidate] remove homingCandidate
