# Candestroyを削除
    item modify entity @s weapon.mainhand main:collect/mining/break_op/reset
# 素材/採掘レベルを特定
    item modify entity @s weapon.mainhand main:collect/mining/break_op/tiers
# 代入
    item modify entity @s weapon.mainhand main:collect/mining/break_op/apply
# リセット
    data remove storage collect: Mineables
