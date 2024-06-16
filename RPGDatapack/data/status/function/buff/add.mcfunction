# 全十種加算
    scoreboard players operation @s atk_buff += @e[limit=1,sort=nearest,tag=buff.init] atk_buff
    scoreboard players operation @s mag_buff += @e[limit=1,sort=nearest,tag=buff.init] mag_buff
    scoreboard players operation @s dex_buff += @e[limit=1,sort=nearest,tag=buff.init] dex_buff
    scoreboard players operation @s max_hp_buff += @e[limit=1,sort=nearest,tag=buff.init] max_hp_buff
    scoreboard players operation @s int_buff += @e[limit=1,sort=nearest,tag=buff.init] int_buff
    scoreboard players operation @s def_buff += @e[limit=1,sort=nearest,tag=buff.init] def_buff
    scoreboard players operation @s spd_buff += @e[limit=1,sort=nearest,tag=buff.init] spd_buff
    scoreboard players operation @s crt_buff += @e[limit=1,sort=nearest,tag=buff.init] crt_buff
    scoreboard players operation @s luk_buff += @e[limit=1,sort=nearest,tag=buff.init] luk_buff
    scoreboard players operation @s acc_buff += @e[limit=1,sort=nearest,tag=buff.init] acc_buff
# ステータス更新
    function status:update/
