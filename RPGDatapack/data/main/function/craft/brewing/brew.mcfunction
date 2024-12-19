# スロット3と4から素材ID+ポーションレベルを取得
    execute store result score #material buffer run data get block ~ ~ ~ Items[{Slot:3b}].components."minecraft:custom_data".materialID 100
    execute store result score #powder buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".powderID 10
    execute store result score #powderLevel buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".powderLv
# ID結合
    scoreboard players operation #material buffer += #powder buffer
    scoreboard players operation #material buffer += #powderLevel buffer
    scoreboard players add #material buffer 7000
# 結合結果を見て醸造台&item_displayのポーション置き換え
    item replace block 0 -59 0 container.0 with air
    function #asset:craft/recipes/brewing
    item replace block ~ ~ ~ container.0 from block 0 -59 0 container.0
    item replace block ~ ~ ~ container.1 from block 0 -59 0 container.0
    item replace block ~ ~ ~ container.2 from block 0 -59 0 container.0
    execute at @e[tag=brewing.this] run item replace entity @n[tag=brewing.slot.0] contents with potion[custom_model_data={floats:[1]}]
    execute at @e[tag=brewing.this] run data modify entity @n[tag=brewing.slot.0] item.components."minecraft:potion_contents".custom_color set from block ~ ~ ~ Items[{Slot:0b}].components."minecraft:potion_contents".custom_color
    execute at @e[tag=brewing.this] run item replace entity @n[tag=brewing.slot.1] contents with potion[custom_model_data={floats:[1]}]
    execute at @e[tag=brewing.this] run data modify entity @n[tag=brewing.slot.1] item.components."minecraft:potion_contents".custom_color set from block ~ ~ ~ Items[{Slot:1b}].components."minecraft:potion_contents".custom_color
    execute at @e[tag=brewing.this] run item replace entity @n[tag=brewing.slot.2] contents with potion[custom_model_data={floats:[1]}]
    execute at @e[tag=brewing.this] run data modify entity @n[tag=brewing.slot.2] item.components."minecraft:potion_contents".custom_color set from block ~ ~ ~ Items[{Slot:2b}].components."minecraft:potion_contents".custom_color
# 演出
    playsound block.brewing_stand.brew block @s ~ ~ ~ 1 1
    playsound item.bucket.empty block @s ~ ~ ~ 1 1.25
    playsound block.fire.extinguish block @s ~ ~ ~ 1 2
# リセット
    data remove block 0 -59 0 Items[{Slot:0b}]
    execute at @e[tag=brewing.this] run data remove block ~ ~ ~ Items[{Slot:3b}]
    execute at @e[tag=brewing.this] run data remove block ~ ~ ~ Items[{Slot:4b}]
