#次回行動を起こすまでの時間調整
    scoreboard players set @s aiTimer 100
    function main:get_rng
    scoreboard players operation #rng buffer %= #20 const
    scoreboard players operation @s aiTimer += #rng buffer
#リセット
    scoreboard players reset #rng
