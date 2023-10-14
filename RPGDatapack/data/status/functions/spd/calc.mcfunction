# マクロ最高
$attribute @s generic.movement_speed base set $(spd)
# リセット
    data remove storage status: data.spd
    scoreboard players reset $spdBuffer buffer
