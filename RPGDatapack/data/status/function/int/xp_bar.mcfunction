# 初期化
    xp set @s 40 levels
    xp set @s 0 points
# ポイント
    $xp set @s $(ratio) points
# レベル
    $xp set @s $(value) levels
# リセット
    data remove storage status: data
