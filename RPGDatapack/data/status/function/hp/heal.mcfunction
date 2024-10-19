# 回復
    scoreboard players operation @s hp += #heal_amount_hp buffer
    scoreboard players operation @s hp < @s max_hp
    function status:hp/calc_ratio
    scoreboard players operation #prevHP buffer = @s max_hp
    function status:hp/update
# リセット
    scoreboard players reset #heal_amount_hp buffer
    scoreboard players reset #prevHP buffer
