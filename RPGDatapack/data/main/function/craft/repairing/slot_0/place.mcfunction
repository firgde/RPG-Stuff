# slot.0とmainhandのアイテム交換
    execute at @n[tag=repair_slot.0] run item replace entity @n[tag=repair_item,type=item_display] contents from entity @s weapon.mainhand
    execute at @n[tag=repair_slot.0] run data modify entity @n[tag=repair_item,type=item_display] item.count set value 1b
    item modify entity @s weapon.mainhand {function:"set_count",count:{type:"constant",value:-1},add:1b}
# リセット
    scoreboard players reset #modify_count buffer
