# 演出などを戻す
    execute if entity @s[tag=debuff.fire] on origin run data modify entity @s HasVisualFire set value 0b
    execute if entity @s[tag=debuff.fire_fire] on origin run data modify entity @s HasVisualFire set value 0b
    execute if entity @s[tag=debuff.fire_thunder] on origin run data modify entity @s HasVisualFire set value 0b
    execute if entity @s[tag=debuff.ice_ice] on origin run data modify entity @s[tag=!mob.NoAI] NoAI set value 0b
    execute if entity @s[tag=debuff.ice_ice] on origin run data modify entity @s[tag=!mob.Silent] Silent set value 0b
# ハートを戻す
    execute on origin if entity @s[type=player] run data modify storage combat: data.hud.heart set value '{"text":"\\uE000"}'
