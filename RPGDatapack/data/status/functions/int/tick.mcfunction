# 自然回復
    execute unless score @s mp = @s max_mp run function main:combat/heal/mp_regen
# %を計算
    scoreboard players operation #mpBuffer buffer = @s mp
    scoreboard players operation #mpBuffer buffer *= #100 const
    execute store result storage status: data.mp.ratio int 2 run scoreboard players operation #mpBuffer buffer /= @s max_mp
    execute store result storage status: data.mp.value int 1 run scoreboard players operation #mpBuffer buffer = @s mp
    execute if score #mpBuffer buffer = @s mp run function status:int/xp_bar with storage status: data.mp
# リセット
    scoreboard players reset #mpBuffer buffer
    scoreboard players reset #lv% buffer
