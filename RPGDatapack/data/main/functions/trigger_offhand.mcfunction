# メインハンドのidによって呼び出すfunction変更
    execute store result score #itemID buffer run data get entity @s Inventory[{Slot:-106b}].tag.Customnbt.id
    execute if entity @s[advancements={main:trigger_offhand={consume=true}}] run function #asset:item/trigger/consume
# リセット
    scoreboard players reset #itemID buffer
    advancement revoke @s only main:trigger_offhand
