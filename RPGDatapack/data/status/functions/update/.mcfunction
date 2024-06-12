# intを比較するために保存しておく
    scoreboard players operation #prevInt buffer = @s int
# 無印ステータスリセット
    scoreboard players operation @s atk = @s atk_base
    scoreboard players operation @s mag = @s mag_base
    scoreboard players operation @s dex = @s dex_base
    scoreboard players operation @s max_hp = @s max_hp_base
    scoreboard players operation @s int = @s int_base
    scoreboard players operation @s def = @s def_base
    scoreboard players operation @s spd = @s spd_base
    scoreboard players operation @s crt = @s crt_base
    scoreboard players operation @s luk = @s luk_base
    scoreboard players operation @s acc = @s acc_base
# プレイヤー限定
    execute if entity @s[type=player] run function status:update/player
# バフ値取得
    scoreboard players operation @s atk += @s atk_buff
    scoreboard players operation @s mag += @s mag_buff
    scoreboard players operation @s dex += @s dex_buff
    scoreboard players operation @s max_hp += @s max_hp_buff
    scoreboard players operation @s int += @s int_buff
    scoreboard players operation @s def += @s def_buff
    scoreboard players operation @s spd += @s spd_buff
    scoreboard players operation @s crt += @s crt_buff
    scoreboard players operation @s luk += @s luk_buff
    scoreboard players operation @s acc += @s acc_buff
    scoreboard players operation @s resistance_melee += @s resistance_melee_buff
    scoreboard players operation @s resistance_magic += @s resistance_magic_buff
    scoreboard players operation @s resistance_ranged += @s resistance_ranged_buff
    scoreboard players operation @s resistance_fire += @s resistance_fire_buff
    scoreboard players operation @s resistance_ice += @s resistance_ice_buff
    scoreboard players operation @s resistance_wind += @s resistance_wind_buff
    scoreboard players operation @s resistance_thunder += @s resistance_thunder_buff
# 0より小さいなら調整
    scoreboard players operation @s atk > #0 const
    scoreboard players operation @s mag > #0 const
    scoreboard players operation @s dex > #0 const
    scoreboard players operation @s max_hp > #0 const
    scoreboard players operation @s int > #0 const
    scoreboard players operation @s def > #0 const
    scoreboard players operation @s spd > #0 const
    scoreboard players operation @s crt > #0 const
    scoreboard players operation @s luk > #0 const
    scoreboard players operation @s acc > #0 const
    scoreboard players operation @s resistance_melee > #0 const
    scoreboard players operation @s resistance_magic > #0 const
    scoreboard players operation @s resistance_ranged > #0 const
    scoreboard players operation @s resistance_fire > #0 const
    scoreboard players operation @s resistance_ice > #0 const
    scoreboard players operation @s resistance_wind > #0 const
    scoreboard players operation @s resistance_thunder > #0 const
# Mob限定
    execute if entity @s[type=!player] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base float 0.01 run scoreboard players get @s spd
# リセット
    scoreboard players reset #prevInt
    advancement revoke @s only status:equipped
