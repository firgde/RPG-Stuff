# 中身リセット
    data remove entity @s Items
# ページ移動
    scoreboard players set @s sub_page 1
    scoreboard players set #moneybuffer buffer 0
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
    item replace entity @s container.13 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.14 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.19 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.20 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.21 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.22 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.23 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.24 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
    item replace entity @s container.25 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"purse"}]
# ボタン
    item replace entity @s container.9 with stick[custom_data={ui:1b,menu:"purse",button:1b},item_model="asset:gemstone_shard_remove",item_name={"translate":"social.ui.purse.count.-32"}] 32
    item replace entity @s container.10 with stick[custom_data={ui:1b,menu:"purse",button:1b},item_model="asset:gemstone_shard_remove",item_name={"translate":"social.ui.purse.count.-8"}] 8
    item replace entity @s container.11 with stick[custom_data={ui:1b,menu:"purse",button:1b},item_model="asset:gemstone_shard_remove",item_name={"translate":"social.ui.purse.count.-2"}] 2
    item replace entity @s container.12 with stick[custom_data={ui:1b,menu:"purse",button:1b},item_model="asset:gemstone_shard_remove",item_name={"translate":"social.ui.purse.count.-1"}] 1
    item replace entity @s container.14 with stick[custom_data={ui:1b,menu:"purse",button:1b},item_model="asset:gemstone_shard_add",item_name={"translate":"social.ui.purse.count.1"}] 1
    item replace entity @s container.15 with stick[custom_data={ui:1b,menu:"purse",button:1b},item_model="asset:gemstone_shard_add",item_name={"translate":"social.ui.purse.count.2"}] 2
    item replace entity @s container.16 with stick[custom_data={ui:1b,menu:"purse",button:1b},item_model="asset:gemstone_shard_add",item_name={"translate":"social.ui.purse.count.8"}] 8
    item replace entity @s container.17 with stick[custom_data={ui:1b,menu:"purse",button:1b},item_model="asset:gemstone_shard_add",item_name={"translate":"social.ui.purse.count.32"}] 32
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"purse",button:1b},item_model="asset:back",item_name={"translate":"social.ui.knowledge_book.back"}]
    loot replace entity @s container.26 loot main:social/ui/purse/button_confirm
# 音
    execute as @a at @s run playsound ui.loom.select_pattern master @s ~ ~ ~ 1 2
