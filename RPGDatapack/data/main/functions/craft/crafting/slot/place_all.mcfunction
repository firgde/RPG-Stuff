# slotとmainhandのアイテム交換
    execute at @s run item replace entity @e[limit=1,sort=nearest,tag=slot,type=item_display] contents from entity @p weapon.mainhand
    item replace entity @p weapon.mainhand with air
