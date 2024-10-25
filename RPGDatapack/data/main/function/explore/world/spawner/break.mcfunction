# スポナートロッコ消す
    execute on passengers run kill @s
# 空のアイテムモデル被せる
    item modify entity @s contents {"function":"set_components","components":{"item_model":"air"}}
# 初めて壊すなら進行度に加算
    execute if entity @s[tag=!spawner.broken] run function main:explore/world/spawner/break_new with entity @s item.components."minecraft:custom_data"
# 破壊済みタグ
    tag @s add spawner.broken
