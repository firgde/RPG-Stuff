# 中身リセット
    data remove entity @s Items
# ページ移動
    scoreboard players set @s page 7
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
    item replace entity @s container.11 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.13 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.14 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.15 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.17 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.19 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.20 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.21 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.22 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.23 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.24 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.25 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.26 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="asset:back",item_name={"translate": "social.ui.knowledge_book.back","italic": false}]
# 各種レシピ情報のボタン
    ## クラフト
    item replace entity @s container.10 with stick[item_model="asset:crafting",custom_data={ui:1b,menu:"knowledge_book"},item_name={"translate": "social.ui.knowledge_book.status.craft.crafting"}]
    ## エンチャント
    item replace entity @s container.12 with stick[item_model="asset:enchantment",custom_data={ui:1b,menu:"knowledge_book"},item_name={"translate": "social.ui.knowledge_book.status.craft.enchantment"}]
    ## 醸造
    item replace entity @s container.14 with stick[item_model="asset:brewing",custom_data={ui:1b,menu:"knowledge_book"},item_name={"translate": "social.ui.knowledge_book.status.craft.brewing"}]
    ## 錬金術
    item replace entity @s container.16 with stick[item_model="asset:alchemy",custom_data={ui:1b,menu:"knowledge_book"},item_name={"translate": "social.ui.knowledge_book.status.craft.alchemy"}]
# 音
    execute as @a[limit=1] at @s run playsound item.book.page_turn master @s ~ ~ ~ 2 1
# リセット
    scoreboard players reset #index buffer
    scoreboard players reset #rec buffer
    data remove storage temp: temp
