# custom_dataをスコアに(めちゃくちゃ減った)
    #説明文の行数
    execute store result score #Lore buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".LoreCount
    #エンチャントの数
    execute store result score #enchantcount buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".enchantments.data
    #最大耐久値が元のアイテムと同じ(100か384)なら設定しなおす
    execute if items block ~ ~ ~ container.0 warped_fungus_on_a_stick[max_damage=100] run data modify storage item: Item.components."minecraft:max_damage" set value 100
    execute if items block ~ ~ ~ container.0 bow[max_damage=384] run data modify storage item: Item.components."minecraft:max_damage" set value 384
