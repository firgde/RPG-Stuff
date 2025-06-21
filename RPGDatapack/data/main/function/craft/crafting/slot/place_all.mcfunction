# slotとmainhandのアイテム交換
    execute at @s run item replace entity @n[tag=slot,type=item_display] contents from entity @a[limit=1] weapon.mainhand
    item replace entity @a weapon.mainhand with air
