# 設定して飛ばす
    execute at @e[tag=alchemy.item.0,limit=1,sort=nearest] run summon item ~ ~ ~-0.2 {Tags:["alchemy.result"],PickupDelay:0,Item:{Count:1b,id:"minecraft:stick"}}
    data modify entity @e[tag=alchemy.result,limit=1,sort=nearest] Item set from block 0 -59 0 Items[{Slot:0b}]
    scoreboard players set #powerx buffer 10
    scoreboard players set #powery buffer 10
    scoreboard players set #powerz buffer 10
    execute as @e[tag=alchemy.result] at @s facing entity @p eyes rotated ~180 ~ run function main:motion
# item_displayリセット
    execute if score #success buffer matches 1 run data remove entity @e[tag=alchemy.item.0,limit=1,sort=nearest] item
    execute if score #success buffer matches 1 run data remove entity @e[tag=alchemy.item.1,limit=1,sort=nearest] item
