# 演出などを戻す
    execute if entity @s[tag=debuff.fire] on origin run data modify entity @s HasVisualFire set value 0b
    execute if entity @s[tag=debuff.fire_fire] on origin run data modify entity @s HasVisualFire set value 0b
    execute if entity @s[tag=debuff.fire_thunder] on origin run data modify entity @s HasVisualFire set value 0b
    execute if entity @s[tag=debuff.wind] on origin run attribute @s attack_knockback modifier remove debuff_wind
    execute if entity @s[tag=debuff.thunder] on origin run attribute @s jump_strength modifier remove debuff_thunder
    execute if entity @s[tag=debuff.ice_ice] on origin run data modify entity @s[tag=!mob.NoAI] NoAI set value 0b
    execute if entity @s[tag=debuff.ice_ice] on origin run data modify entity @s[tag=!mob.Silent] Silent set value 0b
    execute if entity @s[tag=debuff.wind_fire] on origin run data modify entity @s HasVisualFire set value 0b
# ハートを戻す
    execute if entity @s[tag=debuff.element] on origin if entity @s[type=player] run data modify storage combat: data.hud.heart set value {"text":"\uE000"}
