# 名前だとか説明文だとか
    data modify storage item: Item.count set value 1b
    data modify storage item: Item.id set value "minecraft:warped_fungus_on_a_stick"
    data modify storage item: Item.components.item_name set value {"italic":false,"color":"green","translate":"item.knowledge_book"}
    data modify storage item: Item.components."minecraft:lore" set value [{"italic":false,"color":"white","translate":"item.knowledge_book.lore"},{"italic":false,"color":"white","translate":"item.knowledge_book.lore.second"}]
    scoreboard players set #Lore buffer 2
    data modify storage item: Item.components."minecraft:custom_data".ItemType set value 8
    data modify storage item: Item.components."minecraft:custom_model_data".floats append value 8999
    data modify storage item: Item.components."minecraft:custom_data".rarity set value 1
    data modify storage item: Item.components."minecraft:custom_data".id set value 8999
# 共通
    function items:set_data/
