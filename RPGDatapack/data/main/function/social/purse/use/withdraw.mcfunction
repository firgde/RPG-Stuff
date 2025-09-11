# 減らす
    scoreboard players operation #moneybuffer buffer < @a money
    scoreboard players operation @a money -= #moneybuffer buffer
# 引き出す種類で合計を割る
    execute store result score #moneycount buffer run scoreboard players operation #moneybuffer buffer /= #moneyamount buffer
# 1,10,20,50個分の宝石の欠片
    execute if score #moneyamount buffer matches 1 run loot give @a loot main:social/ui/purse/gemstone_shard
    execute if score #moneyamount buffer matches 10 run loot give @a loot main:social/ui/purse/gemstone_shard_10
    execute if score #moneyamount buffer matches 20 run loot give @a loot main:social/ui/purse/gemstone_shard_20
    execute if score #moneyamount buffer matches 50 run loot give @a loot main:social/ui/purse/gemstone_shard_50
# 音
    execute at @a run playsound item.bundle.remove_one master @a ~ ~ ~
# スロット26のボタンリセット
    scoreboard players set #moneybuffer buffer 0
    loot replace entity @s container.26 loot main:social/ui/purse/button_confirm
