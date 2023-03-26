#回復
    execute unless score @s mp = @s max_mp run scoreboard players operation @s mp += @s healAmountMP
    scoreboard players operation @s mp < @s max_mp
#ゲージ更新
    function status:int/xp_bar
#リセット
    scoreboard players reset @s healAmountMP
