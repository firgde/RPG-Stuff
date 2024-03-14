# 自然回復
    execute unless score @s mana = @s max_mana run function status:int/mana/timer/remove
# %を計算
    scoreboard players operation #manaBuffer buffer = @s mana
    scoreboard players operation #manaBuffer buffer *= #100 const
    execute store result storage status: data.mana.ratio int 2 run scoreboard players operation #manaBuffer buffer /= @s max_mana
    execute store result storage status: data.mana.value int 1 run scoreboard players operation #manaBuffer buffer = @s mana
    execute if score #manaBuffer buffer = @s mana run function status:int/xp_bar with storage status: data.mana
# リセット
    scoreboard players reset #manaBuffer buffer
    scoreboard players reset #lv% buffer
