# 全十種加算
    scoreboard players operation @s atk_buff += @n[tag=buff.init] atk_buff
    scoreboard players operation @s mag_buff += @n[tag=buff.init] mag_buff
    scoreboard players operation @s dex_buff += @n[tag=buff.init] dex_buff
    scoreboard players operation @s max_hp_buff += @n[tag=buff.init] max_hp_buff
    scoreboard players operation @s int_buff += @n[tag=buff.init] int_buff
    scoreboard players operation @s def_buff += @n[tag=buff.init] def_buff
    scoreboard players operation @s spd_buff += @n[tag=buff.init] spd_buff
    scoreboard players operation @s crt_buff += @n[tag=buff.init] crt_buff
    scoreboard players operation @s luk_buff += @n[tag=buff.init] luk_buff
    scoreboard players operation @s acc_buff += @n[tag=buff.init] acc_buff
# ステータス更新
    function status:update/
