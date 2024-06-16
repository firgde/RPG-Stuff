# メインハンドのidによって呼び出すfunction変更
    execute store result score #itemID buffer run data get entity @s SelectedItem.components."minecraft:custom_data".id
    execute if entity @s[advancements={main:trigger={melee=true}}] run function #asset:item/trigger/left_click
    execute if entity @s[advancements={main:trigger={magic=true}}] run function #asset:item/trigger/right_click
    execute if entity @s[advancements={main:trigger={bow=true}}] run function main:combat/attack/ranged/
    execute if entity @s[advancements={main:trigger={consume=true}}] run function #asset:item/trigger/consume
    execute if entity @s[advancements={main:trigger={ability=true}}] run function #asset:combat/trigger/ability
    execute if entity @s[advancements={main:trigger={mine=true}}] run function items:durability/remove
    execute if entity @s[advancements={main:trigger={equip_head=true}}] store result score #itemID buffer run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".id
    execute if entity @s[advancements={main:trigger={equip_head=true}}] run function #asset:item/trigger/equip/head
    execute if entity @s[advancements={main:trigger={equip_chest=true}}] store result score #itemID buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".id
    execute if entity @s[advancements={main:trigger={equip_chest=true}}] run function #asset:item/trigger/equip/chest
    execute if entity @s[advancements={main:trigger={equip_legs=true}}] store result score #itemID buffer run data get entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".id
    execute if entity @s[advancements={main:trigger={equip_legs=true}}] run function #asset:item/trigger/equip/legs
    execute if entity @s[advancements={main:trigger={equip_feet=true}}] store result score #itemID buffer run data get entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".id
    execute if entity @s[advancements={main:trigger={equip_feet=true}}] run function #asset:item/trigger/equip/feet
# リセット
    advancement revoke @s only main:trigger
    scoreboard players reset #itemID buffer
