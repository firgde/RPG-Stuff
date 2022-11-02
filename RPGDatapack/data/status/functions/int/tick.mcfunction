#自然回復
    execute unless score @s mp = @s max_mp run function main:combat/heal/mp_regen
#%を計算
    scoreboard players operation #mpbuffer buffer = @s mp
    scoreboard players operation #mpbuffer buffer *= #100 const
    execute store result score #lv% buffer run scoreboard players operation #mpbuffer buffer /= @s max_mp
    scoreboard players operation #mpbuffer buffer = @s mp
    execute if score #mpbuffer buffer = @s mp run function status:int/xp_bar
#リセット
    scoreboard players reset #mpbuffer buffer
    scoreboard players reset #lv% buffer
