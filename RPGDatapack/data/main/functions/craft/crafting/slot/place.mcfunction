# slotとmainhandのアイテム交換
    execute at @s run item replace entity @e[limit=1,sort=nearest,tag=slot,type=item_display] container.0 from entity @p weapon.mainhand
    execute at @s run data modify entity @e[limit=1,sort=nearest,tag=slot,type=item_display] item.Count set value 1b
    scoreboard players set #modify_count buffer -1
    item modify entity @p weapon.mainhand items:count
    scoreboard players reset #modify_count buffer
