# 最初にアイテム返却
    execute if items entity @s container.26 *[!custom_data~{ui:1b}] run item replace entity @a player.cursor from entity @s container.26
#  預ける
    execute if score @s page matches 1 run function main:social/purse/use/store
    execute if score @s page matches 1 as @a run loot give @s mine 0 -59 0 mainhand
#  操作する分量が上限を超えないよう調整
    scoreboard players operation #moneybuffer buffer = #moneycount buffer
    execute store result score #moneybuffer buffer run scoreboard players operation #moneybuffer buffer *= #moneyamount buffer
#  引き出す
    execute if score #moneybuffer buffer >= @a[limit=1] money run scoreboard players operation #moneybuffer buffer = @a money
    execute if score @s page matches 2 if score @s sub_page matches 1 run function main:social/purse/use/withdraw
# 音
    execute if score @s page matches 1 as @a at @s run playsound item.bundle.insert
#  リセット
    execute if score @s page matches 1 run scoreboard players reset #moneyamount buffer
    scoreboard players reset #moneycount buffer
    scoreboard players reset #moneybuffer buffer
    execute if score @s page matches 2 run scoreboard players set #moneybuffer buffer 0
    data remove block 0 -59 0 Items
