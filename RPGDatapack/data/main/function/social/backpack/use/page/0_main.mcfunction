# 中身リセット
    data remove entity @s Items
# ページ移動
    scoreboard players set @s page 0
    scoreboard players set @s sub_page 0
# /itemたくさん
    item replace entity @s container.0 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.1 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.2 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.3 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.4 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.5 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.6 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.7 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.8 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.9 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.10 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.12 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.13 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.14 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.16 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.17 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.18 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.19 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.20 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.21 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.22 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.23 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.24 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.25 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.26 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
# ボタン
    item replace entity @s container.11 with stick[custom_data={ui:1b,menu:"backpack"},custom_model_data={floats:[8996]},item_name={"translate":"social.ui.backpack.store","italic": false,"bold": true}]
    item replace entity @s container.15 with stick[custom_data={ui:1b,menu:"backpack"},custom_model_data={floats:[8995]},custom_name={"translate":"social.ui.backpack.withdraw","italic": false,"bold": true}]
# 音
    execute as @a[limit=1] at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 1.5
