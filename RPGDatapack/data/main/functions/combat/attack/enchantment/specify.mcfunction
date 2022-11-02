#エンチャントの種類で分岐
    execute if data storage damage: Damage[{id:"fire_aspect"}] run function main:combat/attack/enchantment/fire_aspect
    execute if data storage damage: Damage[{id:"ice_aspect"}] run function main:combat/attack/enchantment/ice_aspect
    execute if data storage damage: Damage[{id:"thunder_aspect"}] run function main:combat/attack/enchantment/thunder_aspect
    execute if data storage damage: Damage[{id:"wind_aspect"}]

    execute if data storage damage: Damage[{id:"knockback"}] run function main:combat/attack/enchantment/knockback
