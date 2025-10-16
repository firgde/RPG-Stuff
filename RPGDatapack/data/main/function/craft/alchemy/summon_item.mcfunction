# 設定して飛ばす
    execute at @n[tag=alchemy.item.0] run summon item ~ ~ ~-0.2 {Tags:["alchemy.result"],PickupDelay:0,Item:{Count:1b,id:"minecraft:stick"}}
    data modify entity @n[tag=alchemy.result] Item set from block 0 -59 0 Items[{Slot:0b}]
    scoreboard players set #powerx buffer 10
    scoreboard players set #powery buffer 10
    scoreboard players set #powerz buffer 10
    execute as @e[tag=alchemy.result] at @s facing entity @a[limit=1] eyes rotated ~180 ~ run function main:motion
# item_displayリセット
    execute if score #success buffer matches 1 run data remove entity @n[tag=alchemy.item.0] item
    execute if score #success buffer matches 1 run data remove entity @n[tag=alchemy.item.1] item
# 演出
    execute at @e[tag=alchemy.item.0] positioned ~ ~ ~-0.2 run particle block{block_state:"minecraft:water"} ~ ~ ~ 0.1 0.1 0.1 0.5 25
    execute at @e[tag=alchemy.item.0] positioned ~ ~ ~-0.2 run particle flash{color:[1, 1, 1, 1]} ~ ~ ~ 0 0 0 1 1
    playsound item.bucket.empty block @s ~ ~ ~ 1 1
    playsound item.trident.return block @s ~ ~ ~ 1 0.75
    playsound block.amethyst_cluster.break block @s ~ ~ ~ 1 1
