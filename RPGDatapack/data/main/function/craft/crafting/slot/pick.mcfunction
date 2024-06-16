# item_displayからインベントリにアイテムを持ってくる
    item replace block 0 -59 0 container.1 with air
    execute run data modify block 0 -59 0 Items[{Slot:0b}] set from entity @e[limit=1,sort=nearest,tag=slot,type=item_display] item
    #左クリックしていたらアイテム消去
    #スニークしていないなら一個
    execute if entity @p[advancements={main:craft/crafting/interact={left=true}},predicate=!main:sneaking] run item modify entity @e[limit=1,sort=nearest,tag=slot,type=item_display] contents [{"function":"set_count","count":-1,"add":true}]
    execute if entity @p[advancements={main:craft/crafting/interact={left=true}},predicate=!main:sneaking] run data modify block 0 -59 0 Items[{Slot:0b}].count set value 1
    #スニークしているなら全部
    execute if entity @p[advancements={main:craft/crafting/interact={left=true}},predicate=main:sneaking] run item replace entity @e[limit=1,sort=nearest,tag=slot,type=item_display] contents with air
    #右クリックしていたら交換
    #スニークしていないなら一個
    execute if entity @p[advancements={main:craft/crafting/interact={right=true}},predicate=!main:sneaking] run function main:craft/crafting/slot/place
    #スニークしているなら全部
    execute if entity @p[advancements={main:craft/crafting/interact={right=true}},predicate=main:sneaking] run function main:craft/crafting/slot/place_all
    #そしてアイテム還元
    execute unless score #success_1 buffer matches -2147483648..2147483647 as @p if data entity @s SelectedItem run loot give @s mine 0 -59 0 mainhand
    execute unless score #success_1 buffer matches -2147483648..2147483647 unless data entity @p SelectedItem run item replace entity @p weapon.mainhand from block 0 -59 0 container.0
# リセット
    scoreboard players reset #success_1 buffer
    item replace block 0 -59 0 container.0 with air
    advancement revoke @p only main:craft/crafting/interact
