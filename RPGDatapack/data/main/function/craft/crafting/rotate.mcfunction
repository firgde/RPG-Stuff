# 真ん中のinteractionをプレイヤーに向ける
    execute as @e[tag=slot.4,tag=crafting,limit=1,sort=nearest] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 0
# x軸回転を取得して45を足し、90で割ることで値を1,2,3のどれかに絞る
    execute store result score #rot buffer run data get entity @e[tag=slot.4,tag=crafting,limit=1,sort=nearest] Rotation[0]
    scoreboard players add #rot buffer 45
    scoreboard players operation #rot buffer /= #90 const
# 90を掛け、180足してRotationに代入
    scoreboard players operation #rot buffer *= #90 const
    execute as @e[tag=crafting,distance=..3] store result entity @s Rotation[0] float 1.0 run scoreboard players add #rot buffer 180
    execute as @e[tag=slot,distance=..3] store result entity @s Rotation[0] float 1.0 run scoreboard players get #rot buffer

# 真ん中のinteraction以外のタグをつけ直す
    tag @e[tag=slot.0,distance=..5] remove slot.0
    tag @e[tag=slot.1,distance=..5] remove slot.1
    tag @e[tag=slot.2,distance=..5] remove slot.2
    tag @e[tag=slot.3,distance=..5] remove slot.3
    tag @e[tag=slot.5,distance=..5] remove slot.5
    tag @e[tag=slot.6,distance=..5] remove slot.6
    tag @e[tag=slot.7,distance=..5] remove slot.7
    tag @e[tag=slot.8,distance=..5] remove slot.8

    execute at @e[tag=slot.4,distance=..5] positioned ^-0.2 ^ ^0.2 run tag @e[limit=1,sort=nearest,tag=crafting] add slot.0
    execute at @e[tag=slot.4,distance=..5] positioned ^ ^ ^0.2 run tag @e[limit=1,sort=nearest,tag=crafting] add slot.1
    execute at @e[tag=slot.4,distance=..5] positioned ^0.2 ^ ^0.2 run tag @e[limit=1,sort=nearest,tag=crafting] add slot.2
    execute at @e[tag=slot.4,distance=..5] positioned ^-0.2 ^ ^ run tag @e[limit=1,sort=nearest,tag=crafting] add slot.3
    execute at @e[tag=slot.4,distance=..5] positioned ^0.2 ^ ^ run tag @e[limit=1,sort=nearest,tag=crafting] add slot.5
    execute at @e[tag=slot.4,distance=..5] positioned ^-0.2 ^ ^-0.2 run tag @e[limit=1,sort=nearest,tag=crafting] add slot.6
    execute at @e[tag=slot.4,distance=..5] positioned ^ ^ ^-0.2 run tag @e[limit=1,sort=nearest,tag=crafting] add slot.7
    execute at @e[tag=slot.4,distance=..5] positioned ^0.2 ^ ^-0.2 run tag @e[limit=1,sort=nearest,tag=crafting] add slot.8

# リセット
    scoreboard players reset #rot buffer
