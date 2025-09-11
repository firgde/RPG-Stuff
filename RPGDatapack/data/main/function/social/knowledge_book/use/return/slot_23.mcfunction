# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:23b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:23b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:23b}].components
    execute unless data entity @s Items[{Slot:23b}] run item replace block 0 -59 0 container.0 with air
    item replace entity @s container.23 with stick[item_model="air",tooltip_display={hide_tooltip:true},custom_data={ui:1b,menu:"knowledge_book"}]
    execute if score @s page matches 4 if data storage temp: data.combat.mob[18] run function main:social/knowledge_book/use/page/4_status_combat/next
    execute if score @s page matches 5 if data storage temp: data.explore.area[18] run function main:social/knowledge_book/use/page/5_status_explore/next
    execute if score @s page matches 6 if data storage temp: data.collect.item[18] run function main:social/knowledge_book/use/page/6_status_collect/next
    execute if score @s page matches 71 if data storage temp: data.craft.crafting[18] run function main:social/knowledge_book/use/page/7.1_status_craft_crafting/next
    execute if score @s page matches 72 if data storage temp: data.craft.enchantment[18] run function main:social/knowledge_book/use/page/7.2_status_craft_enchantment/next
    execute if score @s page matches 73 if data storage temp: data.craft.brewing[18] run function main:social/knowledge_book/use/page/7.3_status_craft_brewing/next
    execute if score @s page matches 74 if data storage temp: data.craft.alchemy[18] run function main:social/knowledge_book/use/page/7.4_status_craft_alchemy/next
    execute if score @s page matches 8 if data storage temp: data.craft.alchemy[18] run function main:social/knowledge_book/use/page/8_status_social/next
