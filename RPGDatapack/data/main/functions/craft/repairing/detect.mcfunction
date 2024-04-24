# slot.1-3から回復量を取得
    execute at @e[tag=repair_slot.1,limit=1,sort=nearest] store result score #slot buffer run data get entity @e[limit=1,sort=nearest,tag=repair_material] item.components.custom_data.repairAmount
    scoreboard players operation #durHeal buffer += #slot buffer
    execute at @e[tag=repair_slot.2,limit=1,sort=nearest] store result score #slot buffer run data get entity @e[limit=1,sort=nearest,tag=repair_material] item.components.custom_data.repairAmount
    scoreboard players operation #durHeal buffer += #slot buffer
    execute at @e[tag=repair_slot.3,limit=1,sort=nearest] store result score #slot buffer run data get entity @e[limit=1,sort=nearest,tag=repair_material] item.components.custom_data.repairAmount
    scoreboard players operation #durHeal buffer += #slot buffer
# slot.0を回復
    execute as @e[tag=repair_item,limit=1,sort=nearest] unless data entity @s item{id:"minecraft:air"} unless score #durHeal buffer matches 0 run function items:durability/repair
# リセット
    scoreboard players reset #slot buffer
    scoreboard players reset #durHeal buffer
    advancement revoke @s only main:craft/repairing/trigger
