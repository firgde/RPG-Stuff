# 回復
    scoreboard players operation @s hp += #heal_amount_hp buffer
    scoreboard players operation @s hp < @s max_hp
    function status:hp/calc_ratio
    function status:hp/update
# リセット
    scoreboard players reset #heal_amount_hp buffer
