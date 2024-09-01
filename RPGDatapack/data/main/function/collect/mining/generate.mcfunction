# this
    tag @s add this
# 指定された場所のプレーンな地形をマクロで呼び出す
    $place template asset:collect/mining/$(location) ~ ~ ~ none
# (width)×(height)×(length)の範囲の石をコマブロで置き換える
    $fill ~ ~ ~ ~$(width) ~$(height) ~$(length) command_block{Command:"/function main:collect/mining/roll",auto:true} replace stone
## TODO: 石以外にも対応
# リセット
    kill @n[type=armor_stand,tag=collect.mining_spot,distance=..1,tag=!this]
    $scoreboard players set @s generation_cooldown $(cooldown)
