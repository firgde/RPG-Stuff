# 中身リセット
    data remove entity @s Items
# ページ移動
    scoreboard players set @s page 3
    scoreboard players set #item_count buffer 0
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
    item replace entity @s container.19 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.20 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.21 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.22 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.23 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.24 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
    item replace entity @s container.25 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"backpack"}]
# slot13には取り出すアイテムを入れる
    item replace entity @s container.13 from block 0 -59 0 container.1
# contextストレージにアイテムデータを保存する
    data modify storage player:context data.ui.backpack.item set from block 0 -59 0 Items[{Slot:1b}]
    data remove storage player:context data.ui.backpack.item.Slot
# ボタン
    item replace entity @s container.9 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:item_remove",item_name={"translate":"social.ui.purse.count.-32"}] 32
    item replace entity @s container.10 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:item_remove",item_name={"translate":"social.ui.purse.count.-8"}] 8
    item replace entity @s container.11 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:item_remove",item_name={"translate":"social.ui.purse.count.-2"}] 2
    item replace entity @s container.12 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:item_remove",item_name={"translate":"social.ui.purse.count.-1"}] 1
    item replace entity @s container.14 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:item_add",item_name={"translate":"social.ui.purse.count.1"}] 1
    item replace entity @s container.15 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:item_add",item_name={"translate":"social.ui.purse.count.2"}] 2
    item replace entity @s container.16 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:item_add",item_name={"translate":"social.ui.purse.count.8"}] 8
    item replace entity @s container.17 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:item_add",item_name={"translate":"social.ui.purse.count.32"}] 32
    item replace entity @s container.18 with stick[custom_data={ui:1b,menu:"backpack",button:1b},item_model="asset:back",item_name={"translate":"social.ui.knowledge_book.back"}]
    loot replace entity @s container.26 loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"stick","functions":[{"function":"set_name","target":"item_name","entity":"this","name":{"translate":"social.ui.backpack.withdraw.confirm","with":[{"score":{"name":"#item_count","objective":"buffer"}}],"italic":false}},{"function":"set_custom_data","tag":"{ui:1b,menu:\"backpack\"}"},{"function":"set_components","components":{"item_model":"asset:confirm"}}]}]}]}
# 音
    execute as @a[limit=1] at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 1.5
