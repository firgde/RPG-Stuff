#プレイヤーとの位置関係によって使用する技を変える
    execute if entity @p[distance=..10] run function mobs:ai/2000_boss/fire_attack/prepare
    execute if entity @p[distance=10..] run function mobs:ai/2000_boss/thunder_attack/summon
