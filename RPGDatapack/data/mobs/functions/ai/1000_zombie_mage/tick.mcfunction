#適当な間隔で魔法を撃つ。それだけ
    scoreboard players remove @s aiTimer 1
    execute if score @s aiTimer matches ..0 facing entity @p feet run function mobs:ai/1000_zombie_mage/shoot
