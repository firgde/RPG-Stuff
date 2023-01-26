#ボス(テスト)の行動パターン
    scoreboard players remove @s aiTimer 1
    execute if score @s aiTimer matches ..0 facing entity @p feet run function mobs:ai/2000_boss/choice_attack
