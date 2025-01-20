# brewedタグ
    tag @n[tag=brewing.this] add brewing.brewed
# スロット3と4から素材と粉のデータを取得
    data modify storage craft:temp data.brewing.material set from block ~ ~ ~ Items[{Slot:3b}].components."minecraft:custom_data".brewing.material_type
    data modify storage craft:temp data.brewing.powder set from block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".brewing.powder_type
    data modify storage craft:temp data.brewing.powder_lv set from block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".brewing.powder_level
# 結合結果を見て醸造台&item_displayのポーション置き換え
    item replace block 0 -59 0 container.0 with air
    function main:craft/brewing/check_recipe with storage craft:temp data.brewing
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
    data remove storage craft:temp data
    data remove block 0 -59 0 Items[{Slot:0b}]
    execute at @e[tag=brewing.this] run data remove block ~ ~ ~ Items[{Slot:3b}]
    execute at @e[tag=brewing.this] run data remove block ~ ~ ~ Items[{Slot:4b}]
