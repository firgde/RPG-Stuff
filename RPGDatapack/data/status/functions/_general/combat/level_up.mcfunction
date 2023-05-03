# 剰余計算
    #scoreboard players operation $%2 buffer = @s lvl_combat
    #scoreboard players operation $%10 buffer = @s lvl_combat
    #scoreboard players operation $%2 buffer %= $2 const
    #scoreboard players operation $%10 buffer %= $10 const
# わーいﾚﾍﾞﾙｱｯﾌﾟだー
    #execute if score $%10 buffer matches 0 run scoreboard players add @s atk_base 4
    #execute if score $%10 buffer matches 0 run scoreboard players add @s dex_base 4
    #execute if score $%10 buffer matches 0 run scoreboard players add @s def_base 4
    #execute if score $%2 buffer matches 0 run scoreboard players add @s crt_base 2
    scoreboard players add @s atk_base 1
    scoreboard players add @s dex_base 1
    scoreboard players add @s def_base 1
    scoreboard players add @s crt_base 1
# 合計レベルの更新
    function status:_general/set_level
# リセット
    scoreboard players reset $lvlbuffer buffer
    scoreboard players reset $%2 buffer
    scoreboard players reset $%10 buffer
