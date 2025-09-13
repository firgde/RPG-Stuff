# まずアイテム返還
    $execute unless items entity @a[limit=1] player.cursor * run item replace entity @a[limit=1] player.cursor from entity @s container.$(slot)
# データ設定
    data modify storage temp: data.craft set from storage book: data.craft
# slot番目のスロットにストレージのindex番目のレシピデータを入れる
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"temp:","path":"data.craft.brewing[$(index)].discovered"},"range":1} if data storage temp: data.craft.brewing[$(index)] run function main:social/knowledge_book/use/page/7.3_status_craft_brewing/load_recipe with storage temp: data.craft.brewing[$(index)]
    $item replace entity @s container.$(slot) from block 0 -59 0 container.0
# 発見済みでないなら空きスロット配置
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"temp:","path":"data.craft.brewing[$(index)].discovered"},"range":0} run loot replace entity @s container.$(slot) loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"stick","functions":[{"function":"set_name","entity":"this","target":"item_name","name":{"translate":"social.ui.knowledge_book.status.craft.brewing.undiscovered","color":"gray","italic":true}},{"function":"set_custom_data","tag":"{ui:1b,menu:\"knowledge_book\"}"},{"function":"set_components","components":{"item_model":"asset:recipe/undiscovered_brewing_recipe"}}]}]}]}
# そもそもレシピが存在しないなら空
    $execute unless data storage temp: data.craft.brewing[$(index)] run item replace entity @s container.$(slot) with stick[item_model="air",custom_data={ui:1b,menu:"knowledge_book"},tooltip_display={hide_tooltip:true}]
# リセット
    data remove storage temp: data
    item replace block 0 -59 0 container.0 with air
