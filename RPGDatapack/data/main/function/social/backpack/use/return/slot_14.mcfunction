# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:14b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:14b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:14b}].components
    execute unless data entity @s Items[{Slot:14b}] run item replace block 0 -59 0 container.0 with air
    item replace entity @s container.14 with stick[custom_data={ui:1b,menu:"backpack"},tooltip_display={hide_tooltip:true},item_model="air"]
# ページがマッチするならアクション
    execute if score @s page matches 3 run function main:social/backpack/use/page/item/fluctuate with storage player:context data.ui.backpack.item.components."minecraft:custom_data"
    execute if score @s page matches 3 run item replace entity @s container.14 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:item_add",item_name={"translate":"social.ui.purse.count.1"}] 1
