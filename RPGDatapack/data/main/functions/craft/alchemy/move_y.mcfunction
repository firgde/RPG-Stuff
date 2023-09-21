# mov_directionの符号変える
    scoreboard players operation @s mov_direction *= $-1 const
# mov_directionによってinterpolation指定
    execute if score @s mov_direction matches 1 run data modify entity @s transformation.translation set value [0.0f,0.0f,0.0f]
    execute if score @s mov_direction matches -1 run data modify entity @s transformation.translation set value [0.0f,-0.1f,0.0f]
# interpolation_durationを50に設定
    data modify entity @s interpolation_duration set value 50
# start_interpolation
    data modify entity @s start_interpolation set value 0
