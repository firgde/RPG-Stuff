## 四隅のアイテムからスキルを抽選
# 仮ストレージにスキルidをまとめる
    data modify storage craft: data.Enchant.Ability append from block ~ ~ ~ Items[{Slot:1b}].tag.Customnbt.EnchantData.Ability
    data modify storage craft: data.Enchant.Ability append from block ~ ~ ~ Items[{Slot:3b}].tag.Customnbt.EnchantData.Ability
    data modify storage craft: data.Enchant.Ability append from block ~ ~ ~ Items[{Slot:5b}].tag.Customnbt.EnchantData.Ability
    data modify storage craft: data.Enchant.Ability append from block ~ ~ ~ Items[{Slot:7b}].tag.Customnbt.EnchantData.Ability
# give @s stick{Customnbt:{EnchantData:{Ability:{id:"backstep"}}}}
# 0-3番目のどれかををストレージに保存、マクロからデータ追加function実行
    execute store result storage craft: data.Enchant.select int 1 run random value 0..3
    function main:craft/enchanting/ability/select with storage craft: data.Enchant
# リセット
    data remove storage craft: data
