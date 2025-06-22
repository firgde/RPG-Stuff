# メインハンドのidによって呼び出すfunction変更
    execute store result score #itemID buffer run data get entity @s SelectedItem.components."minecraft:custom_data".id
    execute if entity @s[advancements={main:trigger={melee=true}}] run function #asset:item/trigger/left_click
    execute if entity @s[advancements={main:trigger={magic=true}}] run function #asset:item/trigger/right_click
    execute if entity @s[advancements={main:trigger={bow=true}}] run function main:combat/attack/ranged/
    execute if entity @s[advancements={main:trigger={ability=true}}] run function #asset:combat/trigger/ability

    execute if entity @s[advancements={main:trigger={mine=true}}] run function items:durability/remove

    execute if entity @s[advancements={main:trigger={equip_head=true}}] store result score #itemID buffer run data get entity @s equipment.head.components."minecraft:custom_data".id
    execute unless entity @s[advancements={main:trigger={equip_head=false,disequip_head=false}}] run function #asset:item/trigger/equip/head
    execute if entity @s[advancements={main:trigger={equip_chest=true}}] store result score #itemID buffer run data get entity @s equipment.chest.components."minecraft:custom_data".id
    execute unless entity @s[advancements={main:trigger={equip_chest=false,disequip_chest=false}}] run function #asset:item/trigger/equip/chest
    execute if entity @s[advancements={main:trigger={equip_legs=true}}] store result score #itemID buffer run data get entity @s equipment.legs.components."minecraft:custom_data".id
    execute unless entity @s[advancements={main:trigger={equip_legs=false,disequip_legs=false}}] run function #asset:item/trigger/equip/legs
    execute if entity @s[advancements={main:trigger={equip_feet=true}}] store result score #itemID buffer run data get entity @s equipment.feet.components."minecraft:custom_data".id
    execute unless entity @s[advancements={main:trigger={equip_feet=false,disequip_feet=false}}] run function #asset:item/trigger/equip/feet

    execute if entity @s[advancements={main:trigger={consume=true}}] run schedule function items:use/consume/detect 1 append
# リセット
    advancement revoke @s only main:trigger
    scoreboard players set @s usedBook 0
    scoreboard players reset #itemID buffer
