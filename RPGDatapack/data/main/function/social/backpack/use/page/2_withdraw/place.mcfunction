# slot番目のスロットにストレージのindex番目のアイテムデータを入れる
    $execute if data storage temp: items[0] run item replace entity @s container.$(slot) with stick
# ストレージからデータ取得
    item replace block 0 -59 0 container.0 with stick
    $data modify storage item: Item set from storage temp: items[{index:$(index)}]
    data modify block 0 -59 0 Items[{Slot:0b}].components set from storage item: Item.components
    execute positioned 0 -59 0 run function items:get_data
# item_modifierを適用
    $item replace entity @s container.$(slot) from block 0 -59 0 container.0
    $data remove entity @s Items[{Slot:$(slot)b}].components."minecraft:lore"
    $data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_data".ui set value 1b
    $data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_data".menu set value "backpack"
    $data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_data".backpack_item set value true
    $data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_data".index set value $(index)
# そもそもアイテムが存在しないなら空
    $execute unless data storage temp: items[0] run item replace entity @s container.$(slot) with stick[item_model="air",custom_data={ui:1b,menu:"backpack"},tooltip_display={hide_tooltip:true}]
# リセット
    function items:set_data/reset
