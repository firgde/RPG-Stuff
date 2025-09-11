# 0 -59 0にロード
    tag @a add not_give
    $execute as @a run function asset:item/$(result)/give
    tag @a remove not_give
    item replace block 0 -59 0 container.1 with stick[custom_data={ui:1b,menu:"knowledge_book"}]
    item modify block 0 -59 0 container.1 {"function":"set_name","entity":"this","name":{"block":"0 -59 0","nbt":"Items[{Slot:0b}].components.\"minecraft:item_name\"","interpret":true,"color":"white"},target:"item_name"}
    data modify block 0 -59 0 Items[{Slot:1b}].components."minecraft:custom_model_data" set from block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_model_data"
# loreにレシピ本体
    $function main:social/knowledge_book/use/page/7.4_status_craft_alchemy/load_ingredients with storage book: data.craft.alchemy[{result:"$(result)"}].ingredients[0]
    item replace block 0 -59 0 container.0 from block 0 -59 0 container.1
# リセット
    item replace block 0 -59 0 container.1 with air
