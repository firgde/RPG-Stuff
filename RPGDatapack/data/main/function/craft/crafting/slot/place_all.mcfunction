# slotとmainhandのアイテム交換
    execute at @s run item replace entity @n[tag=slot,type=item_display] contents from entity @p weapon.mainhand
    item replace entity @p weapon.mainhand with air
