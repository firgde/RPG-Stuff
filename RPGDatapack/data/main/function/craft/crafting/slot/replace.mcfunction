# slotとmainhandのアイテム交換
    execute at @s run item replace entity @n[tag=slot,type=item_display] contents from entity @p weapon.mainhand
    execute at @s run data modify entity @n[tag=slot,type=item_display] item.count set value 1
    scoreboard players set #modify_count buffer -1
    item modify entity @p weapon.mainhand items:count
    scoreboard players reset #modify_count buffer
