#AttributeModifierリセット(spd>=0)
    attribute @s generic.movement_speed modifier remove 1-0-0-0-A
    attribute @s generic.movement_speed modifier remove 1-0-0-0-9
    attribute @s generic.movement_speed modifier remove 1-0-0-0-8
    attribute @s generic.movement_speed modifier remove 1-0-0-0-7
    attribute @s generic.movement_speed modifier remove 1-0-0-0-6
    attribute @s generic.movement_speed modifier remove 1-0-0-0-5
    attribute @s generic.movement_speed modifier remove 1-0-0-0-4
    attribute @s generic.movement_speed modifier remove 1-0-0-0-3
    attribute @s generic.movement_speed modifier remove 1-0-0-0-2
    attribute @s generic.movement_speed modifier remove 1-0-0-0-1
    attribute @s generic.movement_speed modifier remove 1-0-0-0-0
    attribute @s generic.movement_speed modifier remove 1-0-0-1-7
    attribute @s generic.movement_speed modifier remove 1-0-0-1-6
    attribute @s generic.movement_speed modifier remove 1-0-0-1-5
    attribute @s generic.movement_speed modifier remove 1-0-0-1-4
    attribute @s generic.movement_speed modifier remove 1-0-0-1-3
    attribute @s generic.movement_speed modifier remove 1-0-0-1-2
    attribute @s generic.movement_speed modifier remove 1-0-0-1-1
    attribute @s generic.movement_speed modifier remove 1-0-0-1-0
#移動速度のAttributeModifier適用
    scoreboard players operation $spdbuffer buffer = @s spd
    execute if score @s spd matches ..-1 run function status:spd/update_negative
    scoreboard players operation $spdbuffer buffer *= $2^20 const
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-A "movSpeed9" 0.4096 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-9 "movSpeed9" 0.2048 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-8 "movSpeed8" 0.1024 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-7 "movSpeed7" 0.0512 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-6 "movSpeed6" 0.0256 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-5 "movSpeed5" 0.0128 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-4 "movSpeed4" 0.0064 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-3 "movSpeed3" 0.0008 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-2 "movSpeed2" 0.0004 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-1 "movSpeed1" 0.0002 add
    scoreboard players operation $spdbuffer buffer *= $2 const
    execute if score $spdbuffer buffer matches ..-1 run attribute @s generic.movement_speed modifier add 1-0-0-0-0 "movSpeed0" 0.0001 add
#spdの値を保存
    scoreboard players operation @s spd_prv = @s spd
#リセット
    scoreboard players reset $spdbuffer
