# HUDにアイコン追加
    execute if score @s atk_buff matches 1.. on origin unless entity @s[tag=buff.atk] run data modify storage combat: data.hud.buff append value {"text":"\uE00D"}
    execute if score @s atk_buff matches ..-1 on origin unless entity @s[tag=buff.atk] run data modify storage combat: data.hud.debuff append value {"text":"\uE01E"}
    execute if score @s atk_buff matches ..-1 run tag @s add debuff
    execute unless score @s atk_buff matches 0 on origin run tag @s add buff.atk
    execute if score @s mag_buff matches 1.. on origin unless entity @s[tag=buff.mag] run data modify storage combat: data.hud.buff append value {"text":"\uE00E"}
    execute if score @s mag_buff matches ..-1 on origin unless entity @s[tag=buff.mag] run data modify storage combat: data.hud.debuff append value {"text":"\uE01F"}
    execute if score @s mag_buff matches ..-1 run tag @s add debuff
    execute unless score @s mag_buff matches 0 on origin run tag @s add buff.mag
    execute if score @s dex_buff matches 1.. on origin unless entity @s[tag=buff.dex] run data modify storage combat: data.hud.buff append value {"text":"\uE00F"}
    execute if score @s dex_buff matches ..-1 on origin unless entity @s[tag=buff.dex] run data modify storage combat: data.hud.debuff append value {"text":"\uE020"}
    execute if score @s dex_buff matches ..-1 run tag @s add debuff
    execute unless score @s dex_buff matches 0 on origin run tag @s add buff.dex
    execute if score @s max_hp_buff matches 1.. on origin unless entity @s[tag=buff.hp] run data modify storage combat: data.hud.buff append value {"text":"\uE010"}
    execute if score @s max_hp_buff matches ..-1 on origin unless entity @s[tag=buff.hp] run data modify storage combat: data.hud.debuff append value {"text":"\uE010"}
    execute if score @s max_hp_buff matches ..-1 run tag @s add debuff
    execute unless score @s max_hp_buff matches 0 on origin run tag @s add buff.hp
    execute if score @s int_buff matches 1.. on origin unless entity @s[tag=buff.int] run data modify storage combat: data.hud.buff append value {"text":"\uE011"}
    execute if score @s int_buff matches ..-1 on origin unless entity @s[tag=buff.int] run data modify storage combat: data.hud.debuff append value {"text":"\uE011"}
    execute if score @s int_buff matches ..-1 run tag @s add debuff
    execute unless score @s int_buff matches 0 on origin run tag @s add buff.int
    execute if score @s def_buff matches 1.. on origin unless entity @s[tag=buff.def] run data modify storage combat: data.hud.buff append value {"text":"\uE012"}
    execute if score @s def_buff matches ..-1 on origin unless entity @s[tag=buff.def] run data modify storage combat: data.hud.debuff append value {"text":"\uE012"}
    execute if score @s def_buff matches ..-1 run tag @s add debuff
    execute unless score @s def_buff matches 0 on origin run tag @s add buff.def
    execute if score @s spd_buff matches 1.. on origin unless entity @s[tag=buff.spd] run data modify storage combat: data.hud.buff append value {"text":"\uE013"}
    execute if score @s spd_buff matches ..-1 on origin unless entity @s[tag=buff.spd] run data modify storage combat: data.hud.debuff append value {"text":"\uE013"}
    execute if score @s spd_buff matches ..-1 run tag @s add debuff
    execute unless score @s spd_buff matches 0 on origin run tag @s add buff.spd
    execute if score @s crt_buff matches 1.. on origin unless entity @s[tag=buff.crt] run data modify storage combat: data.hud.buff append value {"text":"\uE014"}
    execute if score @s crt_buff matches ..-1 on origin unless entity @s[tag=buff.crt] run data modify storage combat: data.hud.debuff append value {"text":"\uE014"}
    execute if score @s crt_buff matches ..-1 run tag @s add debuff
    execute unless score @s crt_buff matches 0 on origin run tag @s add buff.crt
    execute if score @s luk_buff matches 1.. on origin unless entity @s[tag=buff.luk] run data modify storage combat: data.hud.buff append value {"text":"\uE015"}
    execute if score @s luk_buff matches ..-1 on origin unless entity @s[tag=buff.luk] run data modify storage combat: data.hud.debuff append value {"text":"\uE015"}
    execute if score @s luk_buff matches ..-1 run tag @s add debuff
    execute unless score @s luk_buff matches 0 on origin run tag @s add buff.luk
    execute if score @s acc_buff matches 1.. on origin unless entity @s[tag=buff.acc] run data modify storage combat: data.hud.buff append value {"text":"\uE016"}
    execute if score @s acc_buff matches ..-1 on origin unless entity @s[tag=buff.acc] run data modify storage combat: data.hud.debuff append value {"text":"\uE016"}
    execute if score @s acc_buff matches ..-1 run tag @s add debuff
    execute unless score @s acc_buff matches 0 on origin run tag @s add buff.acc
