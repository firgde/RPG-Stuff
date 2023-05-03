# slot.6のitem_displayからインベントリにアイテムを持ってくる
    item replace block 0 -59 0 container.1 with air
    execute at @e[type=interaction,tag=crafting,tag=slot.6,limit=1,sort=nearest] run data modify block 0 -59 0 Items[{Slot:0b}] set from entity @e[limit=1,sort=nearest,tag=slot,type=item_display] item
    #左クリックしていたらアイテム消去
    execute if entity @s[advancements={main:craft/interact/slot_6={left=true}}] at @e[type=interaction,tag=crafting,tag=slot.6,limit=1,sort=nearest] run item replace entity @e[limit=1,sort=nearest,tag=slot,type=item_display] container.0 with air
    #右クリックしていたら交換
    execute if entity @s[advancements={main:craft/interact/slot_6={right=true}}] run function main:craft/slot_6/place
    #そしてアイテム還元
    loot give @s mine 0 -59 0 mainhand
# 向き調整
    function main:craft/rotate
# リセット
    item replace block 0 -59 0 container.0 with air
    advancement revoke @s only main:craft/interact/slot_6
