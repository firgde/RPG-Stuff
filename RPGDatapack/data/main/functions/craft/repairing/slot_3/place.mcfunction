# slot.3とmainhandのアイテム交換
    execute at @e[tag=repair_slot.3,limit=1,sort=nearest] run item replace entity @e[limit=1,sort=nearest,tag=repair_material,type=item_display] contents from entity @s weapon.mainhand
    execute at @e[tag=repair_slot.3,limit=1,sort=nearest] run data modify entity @e[limit=1,sort=nearest,tag=repair_material,type=item_display] item.Count set value 1b
    scoreboard players set #modify_count buffer -1
    item modify entity @s weapon.mainhand items:count
# リセット
    scoreboard players reset #modify_count buffer
