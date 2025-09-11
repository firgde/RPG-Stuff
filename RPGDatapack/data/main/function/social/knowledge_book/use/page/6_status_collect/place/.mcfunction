# slot番目のスロットにストレージのindex番目のアイテムデータを入れる
    $execute if data storage book: data.collect.item[$(index)] run item replace entity @s container.$(slot) with stick
# 発見済みならアイコン、そうでないなら空きスロット配置
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"book:","path":"data.collect.item[$(index)].discovered"},"range":1} run function main:social/knowledge_book/use/page/6_status_collect/place/discovered with storage temp: temp
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"book:","path":"data.collect.item[$(index)].discovered"},"range":0} run function main:social/knowledge_book/use/page/6_status_collect/place/undiscovered with storage temp: temp
# そもそもアイテムが存在しないなら空
    $execute unless data storage book: data.collect.item[$(index)] run item replace entity @s container.$(slot) with stick[item_model="air",custom_data={ui:1b,menu:"knowledge_book"},tooltip_display={hide_tooltip:true}]
# リセット
    function items:set_data/reset
