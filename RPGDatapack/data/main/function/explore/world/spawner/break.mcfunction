# スポナートロッコ消す
    execute on passengers run kill @s
# 空のアイテムモデル被せる
    item modify entity @s contents {"function":"set_components","components":{"item_model":"air"}}
# 破壊済みタグ
    tag @s add spawner.broken
