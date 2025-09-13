# 先にアイテム返還
    execute unless items entity @a[limit=1] player.cursor * run item replace entity @a[limit=1] player.cursor from block 0 -59 0 container.0
# 個数が最大スタック数以下なら普通にシュル箱経由、そうでないなら複数回に分ける
    execute store result score #max_stack_size buffer run data get storage player:context data.ui.backpack.item.components."minecraft:max_stack_size"
    execute unless data storage player:context data.ui.backpack.item.components."minecraft:max_stack_size" run scoreboard players set #max_stack_size buffer 64
    execute if score #item_count buffer <= #max_stack_size buffer run function main:social/backpack/use/page/item/give with storage player:context data.ui.backpack.item.components."minecraft:custom_data"
    execute if score #item_count buffer > #max_stack_size buffer run function main:social/backpack/use/page/item/rec
# 残数が0ならページからでる
    execute if score #max_count buffer matches 0 run function main:social/backpack/use/page/2_withdraw/init
# リセット
    scoreboard players reset #item_count buffer
    scoreboard players reset #max_stack_size buffer
    scoreboard players reset #max_count buffer
# 音
    execute as @a[limit=1] at @s run playsound item.armor.equip_generic
