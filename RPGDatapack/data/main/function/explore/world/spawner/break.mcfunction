# スポナートロッコ消す
    execute on passengers run kill @s
# 空のアイテムモデル被せる
    item modify entity @s contents {function:"set_custom_model_data",value:1}
# 破壊済みタグ
    tag @s add spawner.broken
