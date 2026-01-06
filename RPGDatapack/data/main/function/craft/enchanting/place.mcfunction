# 本体のディスペンサー
    setblock ~ ~ ~ dispenser{CustomName:[{"translate":"craft.ui.enchanter.gui","color": "white"},{"translate":"craft.ui.enchanter","color": "dark_gray"}]}
    #透明な棒をぶち込む
    item replace block ~ ~ ~ container.0 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"enchanter"}]
    item replace block ~ ~ ~ container.2 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"enchanter"}]
    item replace block ~ ~ ~ container.6 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"enchanter"}]
    item replace block ~ ~ ~ container.8 with stick[tooltip_display={hide_tooltip:true},item_model="air",custom_data={ui:1b,menu:"enchanter"}]
# 見た目
    summon item_display ~ ~0.5 ~ {item:{id:"minecraft:enchanting_table",count:1},Tags:["enchanter","craft"],brightness:{block:15,sky:15}}
    summon interaction ~ ~1 ~ {Tags:["enchanting"],width:0.25f,height:0.75f}
    summon item ~ ~1 ~ {Item:{id:"minecraft:stick",count:1,components:{item_model:"air"}},PickupDelay:32767,Tags:["display_item"],Age:-32768}
