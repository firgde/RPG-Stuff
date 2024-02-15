# 割合に合わせてHP調整
    scoreboard players operation #hpBuffer buffer = @s max_hp
    scoreboard players operation #hpBuffer buffer *= @s hp_ratio
    execute store result score @s hp run scoreboard players operation #hpBuffer buffer /= #100 const
    scoreboard players operation @s hp < @s max_hp
# HUDでのスペース調整
    execute if score @s hp matches 0..9 run data modify storage combat: data.hud.Space set value '{"text":"\\uF828\\uF824"}'
    execute if score @s hp matches 10..99 run data modify storage combat: data.hud.Space set value '{"text":"\\uF826"}'
    execute if score @s hp matches 100..999 run data modify storage combat: data.hud.Space set value '{"text":""}'
# AttributeModifier適用
    function status:hp/calc_ratio
    execute store result storage status: data.hp int 0.2 run scoreboard players get @s hp_ratio
    function status:hp/calc with storage status: data
# リセット
    scoreboard players reset #hpBuffer buffer
