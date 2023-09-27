# this
    tag @s add this
    tag @s add playerArrow
# チャージ率と攻撃力をかけて保存
    execute store result score @s dex run scoreboard players operation @p bowCharge *= @p dex
    scoreboard players operation @s dex /= $20 const
# 2体まで貫通
    data modify entity @s PierceLevel set value 2b
# 属性
    execute store result score @s main_element run data get entity @p SelectedItem.tag.Customnbt.Element.Type
    execute store result score @s side_element run data get entity @p Inventory[{Slot:-106b,tag:{Customnbt:{offhandOnly:1b}}}].tag.Customnbt.Element.Type
    execute unless score @s main_element matches 0 if score @s side_element matches 0 run scoreboard players operation @s element = @s main_element
    execute if score @s main_element matches 0 unless score @s side_element matches 0 run scoreboard players operation @s element = @s side_element
    execute unless score @s main_element matches 0 unless score @s side_element matches 0 run say combine
# リセット
    tag @s remove this
