# アイテムを引き出すか否か検知
    execute if predicate {"condition":"any_of","terms":[{"condition":"entity_properties","entity":"this","predicate":{"slots":{"inventory.*":{"predicates":{"custom_data":{backpack_item:true}}}}}},{"condition":"entity_properties","entity":"this","predicate":{"slots":{"hotbar.*":{"predicates":{"custom_data":{backpack_item:true}}}}}},{"condition":"entity_properties","entity":"this","predicate":{"slots":{"player.cursor":{"predicates":{"custom_data":{backpack_item:true}}}}}},{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","advancements":{"main:social/backpack/pick_stick":{"throw":true}}}}}]} run function main:social/backpack/use/page/2_withdraw/buffer
# 棒を消す
    clear @s *[custom_data~{ui:1b}]
    #ドロップした棒はkill
    execute unless score @n[tag=backpack,distance=0..,type=chest_minecart] page matches 2.. if score @s throw matches 1.. at @a[limit=1] as @e[type=item,distance=..5] if items entity @s contents *[custom_data~{ui:1b,menu:"backpack"}] run kill @s

# なんかアイテムが別に入っていたらインベントリに戻し、棒に置き換える
    #0,-59,0のシュルカーボックスのアイテム削除
    execute unless entity @s[tag=withdraw] run data remove block 0 -59 0 Items
    #どこのスロットが変えられたか
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.0 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_0
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.1 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_1
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.2 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_2
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.3 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_3
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.4 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_4
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.5 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_5
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.6 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_6
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.7 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_7
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.8 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_8
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.9 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_9
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.10 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_10
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.11 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_11
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.12 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_12
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.13 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_13
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.14 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_14
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.15 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_15
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.16 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_16
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless score @s page matches 1 unless items entity @s container.17 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_17
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless items entity @s container.18 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_18
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless items entity @s container.19 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_19
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless items entity @s container.20 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_20
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless items entity @s container.21 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_21
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless items entity @s container.22 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_22
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless items entity @s container.23 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_23
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless items entity @s container.24 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_24
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless items entity @s container.25 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_25
    execute as @n[tag=backpack,distance=0..,type=chest_minecart] unless items entity @s container.26 *[custom_data~{ui:1b,menu:"backpack"}] run function main:social/backpack/use/return/slot_26
# アイテム取り出しは固有ページ
    execute if score @n[tag=backpack,distance=0..,type=chest_minecart] page matches 2 if entity @s[tag=withdraw] as @n[tag=backpack,distance=0..,type=chest_minecart] run function main:social/backpack/use/page/item/init
# そしてアイテム還元
    execute unless items entity @a[limit=1] player.cursor * run item replace entity @a[limit=1] player.cursor from block 0 -59 0 container.0
# リセット
    execute if score @s throw matches 1.. at @a[limit=1] as @e[type=item,distance=..5] if items entity @s contents *[custom_data~{ui:1b,menu:"backpack"}] run kill @s
    scoreboard players set @s throw 0
    scoreboard players set @s pick 0
    tag @s remove withdraw
    advancement revoke @s only main:social/backpack/pick_stick
