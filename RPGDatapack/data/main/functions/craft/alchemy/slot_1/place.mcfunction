# slot.1とmainhandのアイテム交換
    execute at @e[tag=alchemy.slot.1,limit=1,sort=nearest] run item replace entity @e[limit=1,sort=nearest,tag=alchemy.item,type=item_display] container.0 from entity @s weapon.mainhand
    execute at @e[tag=alchemy.slot.1,limit=1,sort=nearest] run data modify entity @e[limit=1,sort=nearest,tag=alchemy.item,type=item_display] item.Count set value 1b
    item modify entity @s weapon.mainhand main:craft/remove
