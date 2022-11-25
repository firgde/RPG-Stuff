#全ステータスリセット
    scoreboard players set @s atk_base 0
    scoreboard players set @s mag_base 0
    scoreboard players set @s dex_base 0
    scoreboard players set @s max_hp_base 100
    scoreboard players set @s int_base 0
    scoreboard players set @s def_base 0
    scoreboard players set @s crt_base 0
    scoreboard players set @s luk_base 0
    scoreboard players set @s conc_base 0
#全レベルリセット
    scoreboard players set @s lvl_total 0
    scoreboard players set @s lvl_combat 0
    scoreboard players set @s lvl_explore 0
    scoreboard players set @s lvl_collect 0
    scoreboard players set @s lvl_craft 0
    scoreboard players set @s lvl_social 0
#更新
    function status:_general/get/update
