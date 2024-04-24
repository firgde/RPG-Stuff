# item_displayからインベントリにアイテムを持ってくる
    item replace block 0 -59 0 container.1 with air
    execute at @s run data modify block 0 -59 0 Items[{Slot:0b}] set from entity @e[limit=1,sort=nearest,tag=slot,type=item_display] item
    #左クリックしていたらアイテム消去
    execute if entity @p[advancements={main:craft/crafting/interact={left=true}}] at @s run item replace entity @e[limit=1,sort=nearest,tag=slot,type=item_display] contents with air
    #右クリックしていたら交換
    execute if entity @p[advancements={main:craft/crafting/interact={right=true}}] run function main:craft/crafting/slot/place
    #そしてアイテム還元
    execute if data entity @p SelectedItem run loot give @p mine 0 -59 0 mainhand
    execute unless data entity @p SelectedItem run item replace entity @p weapon.mainhand from block 0 -59 0 container.0
# リセット
    item replace block 0 -59 0 container.0 with air
    advancement revoke @p only main:craft/crafting/interact
