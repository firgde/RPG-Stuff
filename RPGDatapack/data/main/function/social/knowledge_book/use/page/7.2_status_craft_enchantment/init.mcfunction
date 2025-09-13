# アイテム返還
    execute unless items entity @s container.12 *[custom_data~{ui:1b}] run item replace entity @a[limit=1] player.cursor from entity @s container.12
# 中身リセット
    data remove entity @s Items
# ページ移動
    scoreboard players set @s page 72
    scoreboard players set @s sub_page 0
# /itemたくさん
    item replace entity @s container.19 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.20 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.21 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.22 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.23 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.24 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.25 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.26 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="asset:back",item_name={"translate": "social.ui.knowledge_book.back","italic": false}]
# レシピ情報
    function main:social/knowledge_book/use/page/7.2_status_craft_enchantment/load_page
# 音
    execute as @a[limit=1] at @s run playsound item.book.page_turn master @s ~ ~ ~ 2 1
# リセット
    scoreboard players reset #index buffer
    scoreboard players reset #rec buffer
    data remove storage temp: temp
