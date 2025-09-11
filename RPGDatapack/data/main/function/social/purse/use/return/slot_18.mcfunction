# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:18b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:18b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:18b}].components
    execute unless data entity @s Items[{Slot:18b}] run item replace block 0 -59 0 container.0 with air
    execute unless score @s page matches 1 run item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"purse"},tooltip_display={hide_tooltip:true},item_model="air"]
    execute if score @s page matches 1 run item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"purse"},item_model="asset:back",item_name={"translate": "social.ui.knowledge_book.back","italic": false}]
    execute if score @s sub_page matches 0 run function main:social/purse/use/page/0_main
    execute if score @s sub_page matches 1 if score @s page matches 2 run function main:social/purse/use/page/2_withdraw
