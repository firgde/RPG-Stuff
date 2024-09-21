# custom_dataをスコアに(めちゃくちゃ減った)
    #説明文の行数
    execute store result score #Lore buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".LoreCount
    #エンチャントの数
    execute store result score #enchantcount buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".Enchantments
