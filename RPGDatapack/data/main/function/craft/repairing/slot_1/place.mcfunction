# slot.1とmainhandのアイテム交換
    execute at @n[tag=repair_slot.1] run item replace entity @n[tag=repair_material,type=item_display] contents from entity @s weapon.mainhand
    execute at @n[tag=repair_slot.1] run data modify entity @n[tag=repair_material,type=item_display] item.count set value 1
    item modify entity @s weapon.mainhand {function:"set_count",count:{type:"constant",value:-1},add:1b}
# リセット
    scoreboard players reset #modify_count buffer
