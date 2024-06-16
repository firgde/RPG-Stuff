# アイテムのMaterialTypeに素材のMaterialTypeが含まれているか
    $execute if data storage craft:buffer data.item.material_type[{"$(material_type_1)":true}] run scoreboard players set #slot_1 buffer 1
    $execute if data storage craft:buffer data.item.material_type[{"$(material_type_2)":true}] run scoreboard players set #slot_2 buffer 1
    $execute if data storage craft:buffer data.item.material_type[{"$(material_type_3)":true}] run scoreboard players set #slot_3 buffer 1
