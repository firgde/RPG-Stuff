# slot.0とmainhandのアイテム交換
    execute at @n[tag=repair_slot.0] run item replace entity @n[tag=repair_item,type=item_display] contents from entity @s weapon.mainhand
    execute at @n[tag=repair_slot.0] run data modify entity @n[tag=repair_item,type=item_display] item.count set value 1b
    scoreboard players set #modify_count buffer -1
    item modify entity @s weapon.mainhand items:count
# リセット
    scoreboard players reset #modify_count buffer
