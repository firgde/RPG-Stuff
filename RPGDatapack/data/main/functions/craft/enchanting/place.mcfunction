# 本体のディスペンサー
    setblock ~ ~ ~ dispenser{CustomName:'[{"translate":"craft.ui.enchanter.gui","color": "white"},{"translate":"craft.ui.enchanter","color": "dark_gray"}]'}
    #透明な棒をぶち込む
    item replace block ~ ~ ~ container.0 with stick{ui:1b,menu:"enchanter",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace block ~ ~ ~ container.2 with stick{ui:1b,menu:"enchanter",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace block ~ ~ ~ container.6 with stick{ui:1b,menu:"enchanter",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace block ~ ~ ~ container.8 with stick{ui:1b,menu:"enchanter",CustomModelData:1,display:{Name:'{"text": ""}'}}
# 見た目
    summon item_display ~ ~0.5 ~ {item:{id:"minecraft:enchanting_table",Count:1b},Tags:["enchanter"],brightness:{block:15,sky:15}}
    summon interaction ~ ~1 ~ {Tags:["enchanting"],width:0.25f,height:0.75f}
    summon item ~ ~1 ~ {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}},PickupDelay:32767,Tags:["display_item"],Age:-32768}
