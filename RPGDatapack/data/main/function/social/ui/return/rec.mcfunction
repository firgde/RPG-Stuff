# 返却
    function main:social/ui/return/
# データ削除
    execute unless data entity @s Items[0].components.ui run data remove entity @s Items[0]
# データが残っているなら再帰
    execute if data entity @s Items[0] unless data entity @s Items[0].components.ui run function main:social/ui/return/rec
