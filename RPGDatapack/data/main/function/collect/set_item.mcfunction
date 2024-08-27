# drop_itemからシュル箱にアイテムを入れる
    tag @p add not_give
    data modify storage item: Item.count set from entity @s Item.count
    $execute as @p run function asset:item/$(drop_id)/give
    tag @p remove not_give
    item replace entity @s contents from block 0 -59 0 container.0
# リセット
    item replace block 0 -59 0 container.0 with air
