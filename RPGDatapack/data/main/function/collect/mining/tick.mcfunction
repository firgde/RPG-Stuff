# タイマー減算
    scoreboard players remove @s generation_cooldown 1
# プレイヤーが一定距離離れたら再設置
    execute if score @s generation_cooldown matches ..0 run function main:collect/mining/generate with entity @s ArmorItems[3].components."minecraft:custom_data"
