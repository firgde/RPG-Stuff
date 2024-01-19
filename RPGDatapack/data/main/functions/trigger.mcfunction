# メインハンドのidによって呼び出すfunction変更
    execute store result score $itemID buffer run data get entity @s SelectedItem.tag.Customnbt.id
    execute if entity @s[advancements={main:trigger={melee=true}}] run function #asset:item/trigger/left_click
    execute if entity @s[advancements={main:trigger={magic=true}}] run function #asset:item/trigger/right_click
    execute if entity @s[advancements={main:trigger={bow=true}}] run function main:combat/attack/ranged/
    execute if entity @s[advancements={main:trigger={consume=true}}] run function #asset:item/trigger/consume
# リセット
    advancement revoke @s only main:trigger
    scoreboard players reset $itemID buffer
