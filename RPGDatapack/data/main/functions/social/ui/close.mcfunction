# 頭装備を元に戻す
    execute if data entity @s Inventory[{Slot:103b,id:"minecraft:netherite_helmet"}] run function main:social/ui/reset_head
    execute unless data entity @s Inventory[{Slot:103b,id:"minecraft:netherite_helmet"}] run item replace entity @s armor.head with air
# 中にui関係ないアイテムが入ってるなら返却
    execute as @e[tag=minecartUI,distance=..5] unless data entity @s Items[0].tag.ui run function main:social/ui/return/
# UIとじた判定
    tag @s remove ui_opening
    execute positioned ~ ~1.2 ~ as @e[tag=minecartUI,distance=..5] run function main:social/ui/kill
# リセット
    advancement revoke @s only main:social/ui/close
    data remove storage temp: data
