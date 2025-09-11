# slot番目のスロットにストレージのindex番目のレシピデータを入れる
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"book:","path":"data.craft.crafting[$(index)].discovered"},"range":1} if data storage book: data.craft.crafting[$(index)] run function main:social/knowledge_book/use/page/7.1_status_craft_crafting/load_recipe/ with storage temp: temp
# resultからアイテムの名前とモデルを反映
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"book:","path":"data.craft.crafting[$(index)].discovered"},"range":1} as @a run function main:social/knowledge_book/use/page/7.1_status_craft_crafting/load_recipe/result with storage book: data.craft.crafting[$(index)]
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"book:","path":"data.craft.crafting[$(index)].discovered"},"range":1} run data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:custom_model_data".floats set from block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_model_data".floats
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"book:","path":"data.craft.crafting[$(index)].discovered"},"range":1} run data modify entity @s Items[{Slot:$(slot)b}].components."minecraft:item_name" set from block 0 -59 0 Items[{Slot:0b}].components."minecraft:item_name"
# 発見済みでないなら空きスロット配置
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"book:","path":"data.craft.crafting[$(index)].discovered"},"range":0} run loot replace entity @s container.$(slot) loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"stick","functions":[{"function":"set_name","entity":"this","target":"item_name","name":{"translate":"social.ui.knowledge_book.status.craft.crafting.undiscovered","color":"gray","italic":true}},{"function":"set_custom_data","tag":"{ui:1b,menu:\"knowledge_book\"}"},{"function":"set_components","components":{"item_model":"asset:recipe/undiscovered_crafting_recipe"}}]}]}]}
# そもそもレシピが存在しないなら空
    $execute unless data storage book: data.craft.crafting[$(index)] run item replace entity @s container.$(slot) with stick[item_model="air",custom_data={ui:1b,menu:"knowledge_book"},tooltip_display={hide_tooltip:true}]
# リセット
    item replace block 0 -59 0 container.0 with air
