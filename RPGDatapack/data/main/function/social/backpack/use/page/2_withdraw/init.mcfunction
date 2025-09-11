# 中身リセット
    data remove entity @s Items
# ページ移動
    scoreboard players set @s page 2
    scoreboard players set @s sub_page 0
    scoreboard players set #max_page buffer 0
# /itemたくさん
    item replace entity @s container.19 with stick[custom_data={ui:1b,menu:"backpack"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.20 with stick[custom_data={ui:1b,menu:"backpack"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.21 with stick[custom_data={ui:1b,menu:"backpack"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.22 with stick[custom_data={ui:1b,menu:"backpack"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.23 with stick[custom_data={ui:1b,menu:"backpack"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.24 with stick[custom_data={ui:1b,menu:"backpack"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.25 with stick[custom_data={ui:1b,menu:"backpack"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.26 with stick[custom_data={ui:1b,menu:"backpack"},item_model="air",tooltip_display={hide_tooltip:true}]
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"backpack"},item_model="asset:back",item_name={"translate": "social.ui.knowledge_book.back","italic": false}]
# 現在の所持アイテム表示
    function main:social/backpack/use/page/2_withdraw/load_page
# リセット
    scoreboard players reset #index buffer
    scoreboard players reset #rec buffer
    data remove storage temp: temp
    data remove storage temp: items
# 音
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 1.5
