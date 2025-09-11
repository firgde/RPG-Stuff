# バックパックに入っている個数取得
    $execute store result score #max_count buffer run data get storage player:backpack items[{index:$(index)}].count
# 個数データ取得
    execute unless items entity @s container.9 *[custom_data~{button:1b}] run scoreboard players set #modify_count buffer -32
    execute unless items entity @s container.10 *[custom_data~{button:1b}] run scoreboard players set #modify_count buffer -8
    execute unless items entity @s container.11 *[custom_data~{button:1b}] run scoreboard players set #modify_count buffer -2
    execute unless items entity @s container.12 *[custom_data~{button:1b}] run scoreboard players set #modify_count buffer -1
    execute unless items entity @s container.14 *[custom_data~{button:1b}] run scoreboard players set #modify_count buffer 1
    execute unless items entity @s container.15 *[custom_data~{button:1b}] run scoreboard players set #modify_count buffer 2
    execute unless items entity @s container.16 *[custom_data~{button:1b}] run scoreboard players set #modify_count buffer 8
    execute unless items entity @s container.17 *[custom_data~{button:1b}] run scoreboard players set #modify_count buffer 32
    scoreboard players operation #item_count buffer += #modify_count buffer
# 0と保存個数に制限
    execute if score #modify_count buffer matches ..0 run scoreboard players operation #item_count buffer > #0 const
    execute if score #modify_count buffer matches 1.. run scoreboard players operation #item_count buffer < #max_count buffer
    loot replace entity @s container.26 loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"stick","functions":[{"function":"set_name","target":"item_name","entity":"this","name":{"translate":"social.ui.backpack.withdraw.confirm","with":[{"score":{"name":"#item_count","objective":"buffer"}}],"italic":false}},{"function":"set_custom_data","tag":"{ui:1b,menu:\"backpack\"}"},{"function":"set_components","components":{"item_model":"asset:confirm"}}]}]}]}
# リセット
    scoreboard players reset #modify_count buffer
# 音
    execute as @a at @s run playsound block.lantern.place master @s ~ ~ ~ 1 2
