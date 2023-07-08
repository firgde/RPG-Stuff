# 演出などを戻す
    execute if entity @s[tag=debuff.fire] on origin run data modify entity @s HasVisualFire set value 0b
# ハートを戻す
    execute on origin if entity @s[type=player] run data modify storage combat: data.hud.heart set value '{"text":"\\uE000"}'
