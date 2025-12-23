# タグ
    tag @s add arrow.by_player
# チャージ率と攻撃力をかけて保存
    #引き絞った時間が1秒以上ならタイマー補正
    scoreboard players operation @a[limit=1] bow_charge < #20 const
    execute store result score @s dex run scoreboard players operation @a[limit=1] bow_charge *= @a[limit=1] dex
    scoreboard players operation @s dex /= #20 const
# 属性
    execute store result score #main_element buffer run data get entity @a[limit=1] SelectedItem.components."minecraft:custom_data".Element.Type
    execute store result score #side_element buffer run data get entity @a[limit=1] equipment{offhand:{components:{"minecraft:custom_data":{offhandOnly:1b}}}}.offhand.components."minecraft:custom_data".Element.Type
    execute unless score #main_element buffer matches 0 if score #side_element buffer matches 0 run scoreboard players operation #element buffer = #main_element buffer
    execute if score #main_element buffer matches 0 unless score #side_element buffer matches 0 run scoreboard players operation #element buffer = #side_element buffer
    execute if score #element buffer matches 1.. run function main:combat/attack/ranged/element/get
    execute unless score #main_element buffer matches 0 unless score #side_element buffer matches 0 run function main:combat/attack/ranged/element/combine
    execute if entity @s[tag=arrow.fire] run data modify entity @s HasVisualFire set value 1b
# デバフ
    execute store result score #main_element buff_amount run data get entity @a[limit=1] SelectedItem.components."minecraft:custom_data".Element.Debuff.Amount
    execute store result score #main_element buff_timer_element run data get entity @a[limit=1] SelectedItem.components."minecraft:custom_data".Element.Debuff.Timer
    execute store result score #side_element buff_amount run data get entity @a[limit=1] equipment.offhand.components."minecraft:custom_data".Element.Debuff.Amount
    execute if items entity @a[limit=1] weapon.offhand *[custom_data~{offhandOnly:1b}] store result score #side_element buff_timer_element run data get entity @a[limit=1] equipment.offhand.components."minecraft:custom_data".Element.Debuff.Timer
    execute store result score @s buff_amount run scoreboard players operation #main_element buff_amount += #side_element buff_amount
    execute store result score @s buff_timer_element run scoreboard players operation #main_element buff_timer_element += #side_element buff_timer_element
# リセット
    scoreboard players reset #element buffer
    scoreboard players reset #main_element
    scoreboard players reset #side_element
