# 最初にアイテム返却
    execute if items entity @s container.26 *[!custom_data~{ui:1b}] run item replace entity @a[limit=1] player.cursor from entity @s container.26
#  預ける
    execute if score @s page matches 1 run function main:social/purse/use/store
    execute if score @s page matches 1 as @a[limit=1] run loot give @s mine 0 -59 0 mainhand
#  操作する分量が上限を超えないよう調整
    scoreboard players operation #gem_withdrawing buffer = #gem_count buffer
    execute store result score #gem_withdrawing buffer run scoreboard players operation #gem_withdrawing buffer *= #gem_type buffer
#  引き出す
    execute if score #gem_withdrawing buffer >= @a[limit=1] money run scoreboard players operation #gem_withdrawing buffer = @a[limit=1] money
    execute if score @s page matches 2 if score @s sub_page matches 1 run function main:social/purse/use/withdraw
# 音
    execute if score @s page matches 1 as @a[limit=1] at @s run playsound item.bundle.insert
#  リセット
    execute if score @s page matches 1 run scoreboard players reset #gem_type buffer
    scoreboard players reset #gem_count buffer
    scoreboard players reset #gem_withdrawing buffer
    execute if score @s page matches 2 run scoreboard players set #gem_withdrawing buffer 0
    data remove block 0 -59 0 Items
