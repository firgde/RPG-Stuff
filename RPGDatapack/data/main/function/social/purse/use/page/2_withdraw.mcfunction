# 中身リセット
    data remove entity @s Items
# スコアリセット
    scoreboard players reset #gem_type buffer
    scoreboard players reset #gem_count buffer
    scoreboard players reset #gem_withdrawing
# ページ移動
    scoreboard players set @s page 2
    scoreboard players set @s sub_page 0
# /itemたくさん
    item replace entity @s container.0 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.1 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.2 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.3 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.4 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.5 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.6 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.7 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.8 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.9 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.10 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.13 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.14 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.15 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.16 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.17 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.19 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.20 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.21 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.22 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.23 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.24 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.25 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.26 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
# ボタン
    item replace entity @s container.11 with stick[custom_data={ui:1b,menu:"purse"},custom_model_data={floats:[8900]},item_name={"translate":"social.ui.purse.withdraw.1","italic": false}] 1
    item replace entity @s container.12 with stick[custom_data={ui:1b,menu:"purse"},custom_model_data={floats:[8901]},item_name={"translate":"social.ui.purse.withdraw.10","italic": false}] 10
    item replace entity @s container.14 with stick[custom_data={ui:1b,menu:"purse"},custom_model_data={floats:[8902]},item_name={"translate":"social.ui.purse.withdraw.20","italic": false}] 20
    item replace entity @s container.15 with stick[custom_data={ui:1b,menu:"purse"},custom_model_data={floats:[8903]},item_name={"translate":"social.ui.purse.withdraw.50","italic": false}] 50
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"purse"},item_model="asset:back",item_name={"translate": "social.ui.knowledge_book.back","italic": false}]
# 音
    execute as @a at @s run playsound ui.loom.select_pattern master @s ~ ~ ~ 1 2
