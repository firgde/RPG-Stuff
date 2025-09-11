# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:10b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:10b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:10b}].components
    execute unless data entity @s Items[{Slot:10b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s page matches 0 as @a run loot replace entity @e[tag=knowledge_book,distance=..5] container.10 loot main:social/ui/knowledge_book/1_status/head_profile
    execute if score @s page matches 2 if data storage social: data.Quest[-1] run loot replace entity @s container.10 loot main:social/ui/knowledge_book/2_quests/quest_10
    execute if score @s page matches 2 unless data storage temp: data.Quest[-1] run item replace entity @s container.10 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    execute if score @s page matches 4 run function main:social/knowledge_book/use/page/4_status_combat/place_from_temp {index:10,slot:10}
    execute if score @s page matches 5 run function main:social/knowledge_book/use/page/5_status_explore/place_from_temp {index:10,slot:10}
    execute if score @s page matches 6 run function main:social/knowledge_book/use/page/6_status_collect/place/from_temp {index:10,slot:10}
    execute if score @s page matches 71 run function main:social/knowledge_book/use/page/7.1_status_craft_crafting/place_from_temp {index:10,slot:10}
    execute if score @s page matches 72 run function main:social/knowledge_book/use/page/7.2_status_craft_enchantment/place_from_temp {index:10,slot:10}
    execute if score @s page matches 73 run function main:social/knowledge_book/use/page/7.3_status_craft_brewing/place_from_temp {index:10,slot:10}
    execute if score @s page matches 74 run function main:social/knowledge_book/use/page/7.4_status_craft_alchemy/place_from_temp {index:10,slot:10}
    execute if score @s page matches 8 run function main:social/knowledge_book/use/page/8_status_social/place_from_temp {index:10,slot:10}
# ページがマッチするならアクション
    execute if score @s page matches 0 run function main:social/knowledge_book/use/page/1_status/init
    execute if score @s page matches 7 run function main:social/knowledge_book/use/page/7.1_status_craft_crafting/init
