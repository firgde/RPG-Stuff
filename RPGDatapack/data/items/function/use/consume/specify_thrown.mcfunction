# 半径3ブロック以内のアイテム探索
    execute as @e[distance=..3,type=item] if items entity @s contents *[custom_data~{use_remainder:true}] run tag @s add use_remainder
# use_remainderタグを持つアイテムのデータ取得
    function items:use/consume/specify with entity @n[distance=..3,tag=use_remainder] Item.components."minecraft:custom_data"
# アイテムは消す
    kill @e[distance=..3,tag=use_remainder]
