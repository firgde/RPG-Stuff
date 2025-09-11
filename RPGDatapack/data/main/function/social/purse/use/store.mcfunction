# Itemsの0番目からお金の値と個数を持って来てかけ、代入する
    #そもそも金じゃないなら返却
    execute unless data entity @s Items[0].components."minecraft:custom_data".Amount unless data entity @s Items[0].components."minecraft:custom_data".ui run data modify block 0 -59 0 Items append from entity @s Items[0]
    execute store result score #gem_count buffer run data get entity @s Items[0].count
    execute store result score #gem_type buffer run data get entity @s Items[0].components."minecraft:custom_data".Amount
    execute store result score #gem_withdrawing buffer run scoreboard players operation #gem_type buffer *= #gem_count buffer
# moneyスコアに加算
    scoreboard players operation @a money += #gem_withdrawing buffer
# データ削除
    execute unless data entity @s Items[0].components."minecraft:custom_data".ui run data remove entity @s Items[0]
# データが残っているなら再帰
    execute if data entity @s Items[0] unless data entity @s Items[0].components."minecraft:custom_data".ui run function main:social/purse/use/store
