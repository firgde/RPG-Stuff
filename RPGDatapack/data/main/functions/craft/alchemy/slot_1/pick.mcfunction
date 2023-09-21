# slot.1のitem_displayからインベントリにアイテムを持ってくる
    item replace block 0 -59 0 container.1 with air
    execute at @e[type=interaction,tag=alchemy,tag=alchemy.slot.1,limit=1,sort=nearest] run data modify block 0 -59 0 Items[{Slot:0b}] set from entity @e[limit=1,sort=nearest,tag=alchemy.item,type=item_display] item
    #左クリックしていたらアイテム消去
    execute if entity @s[advancements={main:craft/alchemy/slot_1={left=true}}] at @e[type=interaction,tag=alchemy,tag=alchemy.slot.1,limit=1,sort=nearest] run item replace entity @e[limit=1,sort=nearest,tag=alchemy.item,type=item_display] container.0 with air
    #右クリックしていたら交換
    execute if entity @s[advancements={main:craft/alchemy/slot_1={right=true}}] run function main:craft/alchemy/slot_1/place
    #そしてアイテム還元
    execute if data entity @s SelectedItem run loot give @s mine 0 -59 0 mainhand
    execute unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand mine 0 -59 0 mainhand
# リセット
    item replace block 0 -59 0 container.0 with air
    advancement revoke @s only main:craft/alchemy/slot_1
