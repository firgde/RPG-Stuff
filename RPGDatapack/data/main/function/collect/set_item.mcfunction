# drop_itemからシュル箱にアイテムを入れる
    tag @a[limit=1] add not_give
    data modify storage item: Item.count set from entity @s Item.count
    $execute as @a[limit=1] run function asset:item/$(drop_id)/give
    tag @a[limit=1] remove not_give
    item replace entity @s contents from block 0 -59 0 container.0
# リセット
    item replace block 0 -59 0 container.0 with air
