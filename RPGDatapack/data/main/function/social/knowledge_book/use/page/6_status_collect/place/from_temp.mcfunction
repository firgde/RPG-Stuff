# まずアイテム返還
    $execute unless items entity @a[limit=1] player.cursor * run item replace entity @a[limit=1] player.cursor from entity @s container.$(slot)
# slot番目のスロットにストレージのindex番目のアイテムデータを入れる
    $execute if data storage temp: data.collect.item[$(index)] run item replace entity @s container.$(slot) with stick
# 発見済みならアイコン、そうでないなら空きスロット配置
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"temp:","path":"data.collect.item[$(index)].discovered"},"range":1} run function main:social/knowledge_book/use/page/6_status_collect/place/from_temp_discovered {slot:$(slot),index:$(index)}
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"temp:","path":"data.collect.item[$(index)].discovered"},"range":0} run function main:social/knowledge_book/use/page/6_status_collect/place/from_temp_undiscovered {slot:$(slot),index:$(index)}
# そもそもアイテムが存在しないなら空
    $execute unless data storage temp: data.collect.item[$(index)] run item replace entity @s container.$(slot) with stick[item_model="air",custom_data={ui:1b,menu:"knowledge_book"},tooltip_display={hide_tooltip:true}]
# リセット
    function items:set_data/reset
