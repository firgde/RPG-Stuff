# slotとmainhandのアイテム交換
    execute at @s run item replace entity @e[limit=1,sort=nearest,tag=alchemy.item,type=item_display] contents from entity @p weapon.mainhand
    execute at @s run data modify entity @e[limit=1,sort=nearest,tag=alchemy.item,type=item_display] item.count set value 1
    scoreboard players set #modify_count buffer -1
    item modify entity @p weapon.mainhand items:count
    scoreboard players reset #modify_count buffer
