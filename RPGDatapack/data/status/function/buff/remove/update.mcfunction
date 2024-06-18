# 全十種減算
    scoreboard players operation @s atk_buff -= @n[tag=buff.this] atk_buff
    scoreboard players operation @s mag_buff -= @n[tag=buff.this] mag_buff
    scoreboard players operation @s dex_buff -= @n[tag=buff.this] dex_buff
    scoreboard players operation @s max_hp_buff -= @n[tag=buff.this] max_hp_buff
    scoreboard players operation @s int_buff -= @n[tag=buff.this] int_buff
    scoreboard players operation @s def_buff -= @n[tag=buff.this] def_buff
    scoreboard players operation @s spd_buff -= @n[tag=buff.this] spd_buff
    scoreboard players operation @s crt_buff -= @n[tag=buff.this] crt_buff
    scoreboard players operation @s luk_buff -= @n[tag=buff.this] luk_buff
    scoreboard players operation @s acc_buff -= @n[tag=buff.this] acc_buff
# ステータス更新
    function status:update/
