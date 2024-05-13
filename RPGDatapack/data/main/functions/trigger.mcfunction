# メインハンドのidによって呼び出すfunction変更
    execute store result score #itemID buffer run data get entity @s SelectedItem.components."minecraft:custom_data".id
    execute if entity @s[advancements={main:trigger={melee=true}}] run function #asset:item/trigger/left_click
    execute if entity @s[advancements={main:trigger={magic=true}}] run function #asset:item/trigger/right_click
    execute if entity @s[advancements={main:trigger={bow=true}}] run function main:combat/attack/ranged/
    execute if entity @s[advancements={main:trigger={consume=true}}] run function #asset:item/trigger/consume
    execute if entity @s[advancements={main:trigger={ability=true}}] run function #asset:combat/trigger/ability
    execute if entity @s[advancements={main:trigger={mine=true}}] run function items:durability/remove
# リセット
    advancement revoke @s only main:trigger
    scoreboard players reset #itemID buffer
