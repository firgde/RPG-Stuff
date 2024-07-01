# 全ステータスリセット
    scoreboard players set @s atk_base 0
    scoreboard players set @s mag_base 0
    scoreboard players set @s dex_base 0
    scoreboard players set @s max_hp_base 100
    scoreboard players set @s hp_ratio 100
    scoreboard players set @s hp 100
    scoreboard players set @s int_base 0
    scoreboard players set @s def_base 0
    scoreboard players set @s spd_base 0
    scoreboard players set @s crt_base 0
    scoreboard players set @s luk_base 0
    scoreboard players set @s acc_base 0

    scoreboard players set @s resistance_melee_base 100
    scoreboard players set @s resistance_magic_base 100
    scoreboard players set @s resistance_ranged_base 100
    scoreboard players set @s resistance_fire_base 100
    scoreboard players set @s resistance_ice_base 100
    scoreboard players set @s resistance_wind_base 100
    scoreboard players set @s resistance_thunder_base 100
# バフ状態リセット
    data modify storage combat: data.hud.heart set value '{"text":"\\uE000"}'
# 全レベル&経験値リセット
    scoreboard players set @s lvl_total 0
    scoreboard players set @s lvl_combat 0
    scoreboard players set @s lvl_explore 0
    scoreboard players set @s lvl_collect 0
    scoreboard players set @s lvl_craft 0
    scoreboard players set @s lvl_social 0

    scoreboard players set @s xp_combat 0
    scoreboard players set @s xp_explore 0
    scoreboard players set @s xp_collect 0
    scoreboard players set @s xp_craft 0
    scoreboard players set @s xp_social 0
# 更新
    function status:update/
