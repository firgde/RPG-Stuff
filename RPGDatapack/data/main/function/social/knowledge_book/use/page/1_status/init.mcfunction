# 中身リセット
    data remove entity @s Items
# ページ移動
    scoreboard players set @s page 1
# /itemたくさん
    item replace entity @s container.1 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.3 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.5 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.7 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.9 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.10 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.11 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.12 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.14 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.15 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.16 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.17 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.19 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.20 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.21 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.22 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.23 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.24 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.25 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.26 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
# 総合ステータスのスペース調整
    function main:social/knowledge_book/use/page/1_status/get_space
# 色々表示するやつ
    execute as @a run loot replace entity @e[tag=knowledge_book,distance=..5] container.0 loot main:social/ui/knowledge_book/1_status/combat
    execute as @a run loot replace entity @e[tag=knowledge_book,distance=..5] container.2 loot main:social/ui/knowledge_book/1_status/explore
    execute as @a run loot replace entity @e[tag=knowledge_book,distance=..5] container.4 loot main:social/ui/knowledge_book/1_status/collect
    execute as @a run loot replace entity @e[tag=knowledge_book,distance=..5] container.6 loot main:social/ui/knowledge_book/1_status/craft
    execute as @a run loot replace entity @e[tag=knowledge_book,distance=..5] container.8 loot main:social/ui/knowledge_book/1_status/social
    execute as @a run loot replace entity @e[tag=knowledge_book,distance=..5] container.13 loot main:social/ui/knowledge_book/1_status/head
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="asset:back",item_name={"translate": "social.ui.knowledge_book.back","italic": false}]
    execute as @a run loot replace entity @e[tag=knowledge_book,distance=..5] container.26 loot main:social/ui/knowledge_book/1_status/money
# 音
    execute as @a at @s run playsound item.book.page_turn master @s ~ ~ ~ 2 1
# リセット
    data remove storage space: text
