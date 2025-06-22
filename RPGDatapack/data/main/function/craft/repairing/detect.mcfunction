# slot.1-3のMaterialTypeが道具に一致するか検知
    data modify storage craft:buffer data.item.material_type set from entity @n[tag=repair_item] item.components."minecraft:custom_data".MaterialType
    data modify storage craft:buffer data.material.material_type_1 set value "none"
    data modify storage craft:buffer data.material.material_type_2 set value "none"
    data modify storage craft:buffer data.material.material_type_3 set value "none"
    execute at @n[tag=repair_slot.1] run data modify storage craft:buffer data.material.material_type_1 set from entity @n[tag=repair_material] item.components."minecraft:custom_data".MaterialType
    execute at @n[tag=repair_slot.2] run data modify storage craft:buffer data.material.material_type_2 set from entity @n[tag=repair_material] item.components."minecraft:custom_data".MaterialType
    execute at @n[tag=repair_slot.3] run data modify storage craft:buffer data.material.material_type_3 set from entity @n[tag=repair_material] item.components."minecraft:custom_data".MaterialType
    function main:craft/repairing/check_material with storage craft:buffer data.material
# slot.1-3から回復量を取得
    execute if score #slot_1 buffer matches 1 at @n[tag=repair_slot.1] store result score #slot buffer run data get entity @n[tag=repair_material] item.components."minecraft:custom_data".repairAmount
    scoreboard players operation #durHeal buffer += #slot buffer
    scoreboard players reset #slot buffer
    execute if score #slot_2 buffer matches 1 at @n[tag=repair_slot.2] store result score #slot buffer run data get entity @n[tag=repair_material] item.components."minecraft:custom_data".repairAmount
    scoreboard players operation #durHeal buffer += #slot buffer
    scoreboard players reset #slot buffer
    execute if score #slot_3 buffer matches 1 at @n[tag=repair_slot.3] store result score #slot buffer run data get entity @n[tag=repair_material] item.components."minecraft:custom_data".repairAmount
    scoreboard players operation #durHeal buffer += #slot buffer
# slot.0を回復
    execute as @n[tag=repair_item] if items entity @s contents * unless score #durHeal buffer matches 0 run function items:durability/repair
# リセット
    scoreboard players reset #slot buffer
    scoreboard players reset #slot_1 buffer
    scoreboard players reset #slot_2 buffer
    scoreboard players reset #slot_3 buffer
    scoreboard players reset #durHeal buffer
    data remove storage craft:buffer data
    advancement revoke @s only main:craft/repairing/trigger
