# Itemsの0番目からお金の値と個数を持って来てかけ、代入する
    #そもそも金じゃないなら返却
    execute unless data entity @s Items[0].components."minecraft:custom_data".Amount unless data entity @s Items[0].components."minecraft:custom_data".ui run data modify block 0 -59 0 Items append from entity @s Items[0]
    execute store result score #moneycount buffer run data get entity @s Items[0].count
    execute store result score #moneyamount buffer run data get entity @s Items[0].components."minecraft:custom_data".Amount
    execute store result score #moneybuffer buffer run scoreboard players operation #moneyamount buffer *= #moneycount buffer
# moneyスコアに加算
    scoreboard players operation @a money += #moneybuffer buffer
# データ削除
    execute unless data entity @s Items[0].components."minecraft:custom_data".ui run data remove entity @s Items[0]
# データが残っているなら再帰
    execute if data entity @s Items[0] unless data entity @s Items[0].components."minecraft:custom_data".ui run function main:social/purse/use/store
