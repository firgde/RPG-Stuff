#回復
    scoreboard players operation @s hp += @s healAmountHP
    scoreboard players operation @s hp < @s max_hp
    function status:hp/calc_ratio
    function status:hp/update
