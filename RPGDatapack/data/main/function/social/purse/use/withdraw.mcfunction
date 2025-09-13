# 減らす。ただし余剰分は残す。
    scoreboard players operation #gem_withdrawing buffer < @a[limit=1] money
    scoreboard players operation #excess buffer = #gem_withdrawing buffer
    scoreboard players operation #excess buffer %= #gem_type buffer
    scoreboard players operation #gem_withdrawing buffer -= #excess buffer
    scoreboard players operation @a[limit=1] money -= #gem_withdrawing buffer
# 引き出す種類で合計を割る
    execute store result score #gem_count buffer run scoreboard players operation #gem_withdrawing buffer /= #gem_type buffer
# 1,10,20,50個分の宝石の欠片
    execute if score #gem_type buffer matches 1 run loot give @a[limit=1] loot main:social/ui/purse/gemstone_shard
    execute if score #gem_type buffer matches 10 run loot give @a[limit=1] loot main:social/ui/purse/gemstone_shard_10
    execute if score #gem_type buffer matches 20 run loot give @a[limit=1] loot main:social/ui/purse/gemstone_shard_20
    execute if score #gem_type buffer matches 50 run loot give @a[limit=1] loot main:social/ui/purse/gemstone_shard_50
# 音
    execute at @a[limit=1] run playsound item.bundle.remove_one master @a[limit=1] ~ ~ ~
# スロット26のボタンリセット
    scoreboard players set #gem_withdrawing buffer 0
    scoreboard players reset #excess buffer
    loot replace entity @s container.26 loot main:social/ui/purse/button_confirm
