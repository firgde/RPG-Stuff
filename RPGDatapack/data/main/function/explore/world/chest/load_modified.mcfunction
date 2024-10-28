# そのまま元のチェストの最初のダメージ付きアイテムのデータ設定
    function main:explore/world/chest/place_modified with storage temp: loot[0]
# アイテム置き換え
    function #asset:item/loot/load_modified
# 0番目消す
    data remove storage temp: loot[0]
# 要素が残っているなら再帰
    execute if data storage temp: loot[0] run function main:explore/world/chest/load_modified
