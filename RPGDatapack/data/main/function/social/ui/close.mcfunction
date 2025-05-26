# 頭装備を元に戻す
    execute if items entity @s armor.head *[custom_data~{armor:1b}] run function main:social/ui/reset_head
    execute unless items entity @s armor.head *[custom_data~{armor:1b}] run item replace entity @s armor.head with air
# 中にui関係ないアイテムが入ってるなら返却
    execute as @e[tag=minecartUI,distance=..5] unless data entity @s Items[0].components."minecraft:custom_data".ui run function main:social/ui/return/
# UIによって固有処理
    function #asset:social/close_ui
# UIとじた判定
    tag @s remove ui_opening
    execute positioned ~ ~1.2 ~ as @e[tag=minecartUI,distance=..5] run function main:social/ui/kill
# リセット
    advancement revoke @s only main:social/ui/close
    data remove storage temp: data
    data remove storage player:context data.ui
