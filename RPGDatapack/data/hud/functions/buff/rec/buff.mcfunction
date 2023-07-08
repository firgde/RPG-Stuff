# 10pxの空白
    data modify storage combat: data.hud.buff append value '{"text":"\\uF828\\uF822"}'
# recが残っているなら再帰
    scoreboard players remove $rec buffer 1
    execute if score $rec buffer matches 1.. run function hud:buff/rec/buff
