# エンチャントアイテムが持っているエンチャント候補を順に処理
    $data modify storage craft:enchanting temp.pool set from storage craft:enchanting data.items[{Slot:$(Slot)b}].pool[0]
    data modify storage craft:enchanting temp.pool.item_type set from storage craft:enchanting temp.item_type
    function main:craft/enchanting/pool/append with storage craft:enchanting temp.pool
# 再帰
    $data remove storage craft:enchanting data.items[{Slot:$(Slot)b}].pool[0]
    $execute if data storage craft:enchanting data.items[{Slot:$(Slot)b}].pool[0] run function main:craft/enchanting/pool/check_enchantments {Slot:$(Slot)}
