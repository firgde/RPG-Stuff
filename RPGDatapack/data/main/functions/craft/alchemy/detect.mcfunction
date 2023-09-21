# アイテムgive防止タグ
    tag @s add not_give
# 二つのアイテムのID度取得
    execute store result score $id0 buffer run data get entity @e[tag=alchemy.item.0,limit=1,sort=nearest] item.tag.Customnbt.id
    execute store result score $id1 buffer run data get entity @e[tag=alchemy.item.1,limit=1,sort=nearest] item.tag.Customnbt.id
# IDによってアイテム設定
    function main:craft/alchemy/specify
# そうでないならアイテムの種類/レア度によってアイテム生成

# アイテム本体召喚+飛ばす
    execute at @e[tag=alchemy.item.0,limit=1,sort=nearest] run summon item ~ ~ ~ {Tags:["alchemy.result"],PickupDelay:0,Item:{Count:1b,id:"minecraft:stick"}}
    data modify entity @e[tag=alchemy.result,limit=1,sort=nearest] Item.tag set from block 0 -59 0 Items[{Slot:0b}].tag
    scoreboard players set $powerx buffer 10
    scoreboard players set $powery buffer 10
    scoreboard players set $powerz buffer 10
    execute as @e[tag=alchemy.result] at @s facing entity @p eyes rotated ~180 ~ run function main:motion
# item_displayリセット
    data remove entity @e[tag=alchemy.item.0,limit=1,sort=nearest] item
    data remove entity @e[tag=alchemy.item.1,limit=1,sort=nearest] item
# リセット
    scoreboard players reset $id0 buffer
    scoreboard players reset $id1 buffer
    tag @s remove not_give
    data remove block 0 -59 0 Items[{Slot:0b}]
    advancement revoke @s only main:craft/alchemy/trigger
