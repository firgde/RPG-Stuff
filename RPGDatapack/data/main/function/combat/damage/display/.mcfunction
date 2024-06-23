# 合成属性の場合は桁数に応じてネガティブスペース挿入
    scoreboard players operation #damage buffer = @s damage
    execute if score #damageType buffer matches 10.. run function main:combat/damage/display/space
    data modify storage combat: data.Damage.space set string storage combat: data.Damage.space
    data modify storage combat: buffer set from storage combat: data.Damage.space
    data modify storage combat: data.Damage.space set value ''
    function main:combat/damage/display/to_string with storage combat:
# ダメージ表示
    execute store result storage combat: data.Damage.Amount int 1 run scoreboard players get @s damage
    execute unless score #damageType buffer matches 10.. run loot spawn ~ ~1.5 ~ loot main:combat/damage/single
    execute if score #damageType buffer matches 10.. run loot spawn ~ ~1.5 ~ loot main:combat/damage/combined
    execute at @s positioned ~ ~1.5 ~ as @e[type=item,distance=..0.5,tag=!dmg_display] if data entity @s {Item:{components:{"minecraft:custom_data":{DisplayDamage:1b}}}} run tag @s add dmg_display
    execute as @e[tag=dmg_display] run data modify entity @s CustomName set from entity @s Item.components."minecraft:item_name"
    execute as @e[tag=dmg_display,distance=..5] run data merge entity @s {PickupDelay:32767,Age:5985,CustomNameVisible:1b}
# リセット
    scoreboard players reset #damage buffer
    tag @e[tag=dmg_display,distance=..5] remove dmg_display
    data remove storage combat: buffer
    data remove storage combat: data.Damage
