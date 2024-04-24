# 2個入手防止
    tag @p add not_give
# 0 -59 0から空瓶を持ってくる
    execute as @p run function asset:item/7000_glass_bottle/give
    execute if data entity @p SelectedItem{id:"minecraft:glass_bottle"} run item replace entity @p weapon.mainhand from block 0 -59 0 container.0
    execute unless data entity @p SelectedItem{components:{custom_data:{id:7000}}} run loot give @p mine 0 -59 0
    clear @p glass_bottle
# リセット
    tag @p remove not_give
    data remove block 0 -59 0 Items[{Slot:0b}]
