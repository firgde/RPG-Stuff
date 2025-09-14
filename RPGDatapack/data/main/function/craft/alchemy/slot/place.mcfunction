# slotとmainhandのアイテム交換
    execute at @s run item replace entity @n[tag=alchemy.item,type=item_display] contents from entity @a[limit=1] weapon.mainhand
    execute at @s run data modify entity @n[tag=alchemy.item,type=item_display] item.count set value 1
    item modify entity @a[limit=1] weapon.mainhand {function:"set_count",count:{type:"constant",value:-1},add:1b}
    scoreboard players reset #modify_count buffer
