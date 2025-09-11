# 中身リセット
    data remove entity @s Items
# ページ移動
    scoreboard players set @s page 1
    scoreboard players set @s sub_page 0
# /itemたくさん
    item replace entity @s container.19 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.20 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.21 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.22 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.23 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.24 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.25 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
# ボタン
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"purse"},item_model="asset:back",item_name={"translate": "social.ui.knowledge_book.back","italic": false}]
    item replace entity @s container.26 with stick[custom_data={ui:1b,menu:"purse"},item_model="asset:confirm",item_name={"translate": "social.ui.purse.store.confirm","italic": false}]
# 音
    execute as @a at @s run playsound ui.loom.select_pattern master @s ~ ~ ~ 1 2
