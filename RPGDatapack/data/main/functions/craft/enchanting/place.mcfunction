# 本体のディスペンサー
    setblock ~ ~ ~ dispenser{CustomName:'[{"translate":"craft.ui.enchanter.gui","color": "white"},{"translate":"craft.ui.enchanter","color": "dark_gray"}]'}
    #透明な棒をぶち込む
    item replace block ~ ~ ~ container.0 with stick[hide_tooltip={},custom_model_data=1,custom_data={ui:1b,menu:"enchanter"}]
    item replace block ~ ~ ~ container.2 with stick[hide_tooltip={},custom_model_data=1,custom_data={ui:1b,menu:"enchanter"}]
    item replace block ~ ~ ~ container.6 with stick[hide_tooltip={},custom_model_data=1,custom_data={ui:1b,menu:"enchanter"}]
    item replace block ~ ~ ~ container.8 with stick[hide_tooltip={},custom_model_data=1,custom_data={ui:1b,menu:"enchanter"}]
# 見た目
    summon item_display ~ ~0.5 ~ {item:{id:"minecraft:enchanting_table",Count:1b},Tags:["enchanter"],brightness:{block:15,sky:15}}
    summon interaction ~ ~1 ~ {Tags:["enchanting"],width:0.25f,height:0.75f}
    summon item ~ ~1 ~ {Item:{id:"minecraft:stick",Count:1b,components:{custom_model_data:1}},PickupDelay:32767,Tags:["display_item"],Age:-32768}
