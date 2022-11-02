#移動速度のAttributeModifier適用
    scoreboard players operation #spdbuffer buffer *= #-1 Constant
    scoreboard players operation #spdbuffer buffer *= #2^23 Constant
    scoreboard players operation #spdbuffer buffer *= #2 Constant
    execute if score #spdbuffer buffer matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-7 "movSpeed17" -0.1024 add
    scoreboard players operation #spdbuffer buffer *= #2 Constant
    execute if score #spdbuffer buffer matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-6 "movSpeed16" -0.0512 add
    scoreboard players operation #spdbuffer buffer *= #2 Constant
    execute if score #spdbuffer buffer matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-5 "movSpeed15" -0.0256 add
    scoreboard players operation #spdbuffer buffer *= #2 Constant
    execute if score #spdbuffer buffer matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-4 "movSpeed14" -0.0128 add
    scoreboard players operation #spdbuffer buffer *= #2 Constant
    execute if score #spdbuffer buffer matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-3 "movSpeed13" -0.0064 add
    scoreboard players operation #spdbuffer buffer *= #2 Constant
    execute if score #spdbuffer buffer matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-2 "movSpeed12" -0.0032 add
    scoreboard players operation #spdbuffer buffer *= #2 Constant
    execute if score #spdbuffer buffer matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-1 "movSpeed11" -0.0016 add
    scoreboard players operation #spdbuffer buffer *= #2 Constant
    execute if score #spdbuffer buffer matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-0 "movSpeed10" -0.0008 add
#リセット
    scoreboard players set #spdbuffer buffer 0
