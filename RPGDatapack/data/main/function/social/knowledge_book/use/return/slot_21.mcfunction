# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:21b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:21b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:21b}].components
    execute unless data entity @s Items[{Slot:21b}] run item replace block 0 -59 0 container.0 with air
    item replace entity @s container.21 with stick[item_model="air",tooltip_display={hide_tooltip:true},custom_data={ui:1b,menu:"knowledge_book"}]
    execute if score @s page matches 4 unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/4_status_combat/prev
    execute if score @s page matches 5 unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/5_status_explore/prev
    execute if score @s page matches 6 unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/6_status_collect/prev
    execute if score @s page matches 71 unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/7.1_status_craft_crafting/prev
    execute if score @s page matches 72 unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/7.2_status_craft_enchantment/prev
    execute if score @s page matches 73 unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/7.3_status_craft_brewing/prev
    execute if score @s page matches 74 unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/7.4_status_craft_alchemy/prev
    execute if score @s page matches 8 unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/8_status_social/prev
