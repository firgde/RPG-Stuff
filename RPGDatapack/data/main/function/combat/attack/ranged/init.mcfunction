# タグ
    tag @s add playerArrow
# チャージ率と攻撃力をかけて保存
    execute store result score @s dex run scoreboard players operation @p bowCharge *= @p dex
    scoreboard players operation @s dex /= #20 const
# 属性
    execute store result score #mainElement buffer run data get entity @p SelectedItem.components."minecraft:custom_data".Element.Type
    execute store result score #sideElement buffer run data get entity @p Inventory[{Slot:-106b,components:{"minecraft:custom_data":{offhandOnly:1b}}}].components."minecraft:custom_data".Element.Type
    execute unless score #mainElement buffer matches 0 if score #sideElement buffer matches 0 run scoreboard players operation #element buffer = #mainElement buffer
    execute if score #mainElement buffer matches 0 unless score #sideElement buffer matches 0 run scoreboard players operation #element buffer = #sideElement buffer
    execute if score #element buffer matches 1.. run function main:combat/attack/ranged/element/get
    execute unless score #mainElement buffer matches 0 unless score #sideElement buffer matches 0 run function main:combat/attack/ranged/element/combine
    execute if entity @s[tag=arrow.fire] run data modify entity @s HasVisualFire set value 1b
# デバフ
    execute store result score #mainElement buff_amount run data get entity @p SelectedItem.components."minecraft:custom_data".Element.Debuff.Amount
    execute store result score #mainElement buff_timer run data get entity @p SelectedItem.components."minecraft:custom_data".Element.Debuff.Timer
    execute store result score #sideElement buff_amount run data get entity @p Inventory[{Slot:-106b,components:{"minecraft:custom_data":{offhandOnly:1b}}}].components."minecraft:custom_data".Element.Debuff.Amount
    execute store result score #sideElement buff_timer run data get entity @p Inventory[{Slot:-106b,components:{"minecraft:custom_data":{offhandOnly:1b}}}].components."minecraft:custom_data".Element.Debuff.Timer
    execute store result score @s buff_amount run scoreboard players operation #mainElement buff_amount += #sideElement buff_amount
    execute store result score @s buff_timer run scoreboard players operation #mainElement buff_timer += #sideElement buff_timer
# リセット
    scoreboard players reset #element buffer
    scoreboard players reset #mainElement
    scoreboard players reset #sideElement
