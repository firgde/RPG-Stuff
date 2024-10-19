# 最大体力変更時は値を合わせる
    execute unless score #prevHP buffer = @s max_hp run function status:hp/adjust
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
