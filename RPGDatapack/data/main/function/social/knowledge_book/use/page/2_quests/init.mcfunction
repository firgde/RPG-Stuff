# 中身リセット
    data remove entity @s Items
# ページ移動
    scoreboard players set @s page 2
    scoreboard players set @s sub_page 0
# /itemたくさん
    item replace entity @s container.0 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.1 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.2 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.3 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.4 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.5 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.6 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.7 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.8 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.9 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.17 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.19 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.20 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.21 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.22 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.23 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.24 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.25 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.26 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]

# スロット10-16を埋める
    #一時的ストレージにデータ複製
    data modify storage temp: data set from storage social: data
    #クリア済みのクエストをリストから削除
    data remove storage temp: data.Quest[{completed:1}]
    #(サブページ-1)×7個のオブジェクトをリストから削除
    scoreboard players operation #rec buffer = @s sub_page
    scoreboard players operation #rec buffer *= #7 const
    execute unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/2_quests/rec
    #クエストを取得
    execute if data storage temp: data.Quest[-1] run loot replace entity @s container.10 loot main:social/ui/knowledge_book/2_quests/quest_10
    execute unless data storage temp: data.Quest[-1] run item replace entity @s container.10 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    execute if data storage temp: data.Quest[-2] run loot replace entity @s container.11 loot main:social/ui/knowledge_book/2_quests/quest_11
    execute unless data storage temp: data.Quest[-2] run item replace entity @s container.11 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    execute if data storage temp: data.Quest[-3] run loot replace entity @s container.12 loot main:social/ui/knowledge_book/2_quests/quest_12
    execute unless data storage temp: data.Quest[-3] run item replace entity @s container.12 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    execute if data storage temp: data.Quest[-4] run loot replace entity @s container.13 loot main:social/ui/knowledge_book/2_quests/quest_13
    execute unless data storage temp: data.Quest[-4] run item replace entity @s container.13 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    execute if data storage temp: data.Quest[-5] run loot replace entity @s container.14 loot main:social/ui/knowledge_book/2_quests/quest_14
    execute unless data storage temp: data.Quest[-5] run item replace entity @s container.14 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    execute if data storage temp: data.Quest[-6] run loot replace entity @s container.15 loot main:social/ui/knowledge_book/2_quests/quest_15
    execute unless data storage temp: data.Quest[-6] run item replace entity @s container.15 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    execute if data storage temp: data.Quest[-7] run loot replace entity @s container.16 loot main:social/ui/knowledge_book/2_quests/quest_16
    execute unless data storage temp: data.Quest[-7] run item replace entity @s container.16 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    execute if data storage temp: data.Quest[-8] run item replace entity @s container.17 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="asset:next",item_name={"translate": "social.ui.knowledge_book.next","italic": false}]
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="asset:back",item_name={"translate": "social.ui.knowledge_book.back","italic": false}]
    #クエストがないならないと言う
    execute if data storage temp: data{Quest:[]} run item replace entity @s container.13 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="barrier",item_name={"translate": "social.ui.knowledge_book.no_quest","color": "red"}]
# 音
    execute as @a at @s run playsound item.book.page_turn master @s ~ ~ ~ 2 1
# リセット
    scoreboard players reset #rec buffer
