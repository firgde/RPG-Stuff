# 回復
    execute unless score @s mana = @s max_mana run scoreboard players operation @s mana += #heal_amount_mana buffer
    scoreboard players operation @s mana < @s max_mana
# ゲージ更新
    function status:int/xp_bar
# リセット
    scoreboard players reset #heal_amount_mana buffer
