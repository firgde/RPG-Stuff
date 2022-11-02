#取得
    data remove storage damage: Damage
    data modify storage damage: Damage set from entity @e[limit=1,tag=magic,sort=nearest] ArmorItems[{id:"minecraft:stick"}].tag.CustomDamage
#分岐
    execute if data storage damage: Damage{damageType:"fire"} as @s run function main:combat/debuff/fire
    execute if data storage damage: Damage{damageType:"ice"} as @s run function main:combat/debuff/ice
    execute if data storage damage: Damage{damageType:"thunder"} as @s run function main:combat/debuff/thunder
    execute if data storage damage: Damage{damageType:"wind"} as @s run function main:combat/debuff/wind
