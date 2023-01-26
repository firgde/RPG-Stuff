#次回行動を起こすまでの時間調整
    function main:get_rng
    scoreboard players operation $rng buffer %= $4 const
    scoreboard players operation $rng buffer *= $10 const
    scoreboard players operation @s aiTimer += $rng buffer
#リセット
    scoreboard players reset $rng
