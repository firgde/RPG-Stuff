# item_displayからインベントリにアイテムを持ってくる
    item replace block 0 -59 0 container.1 with air
    execute at @s run data modify block 0 -59 0 Items[{Slot:0b}] set from entity @n[tag=alchemy.item,type=item_display] item
    #左クリックしていたらアイテム消去
    execute if entity @a[limit=1,advancements={main:craft/alchemy/interact={left=true}}] at @s run item replace entity @n[tag=alchemy.item,type=item_display] contents with air
    #右クリックしていたら交換
    execute if entity @a[limit=1,advancements={main:craft/alchemy/interact={right=true}}] run function main:craft/alchemy/slot/place
    #そしてアイテム還元
    execute as @a[limit=1] if items entity @s weapon.mainhand * run loot give @s mine 0 -59 0 mainhand
    execute as @a[limit=1] unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand from block 0 -59 0 container.0
# リセット
    item replace block 0 -59 0 container.0 with air
    advancement revoke @a[limit=1] only main:craft/alchemy/interact
