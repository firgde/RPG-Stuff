# 合成属性の場合は桁数に応じてネガティブスペース挿入
    scoreboard players operation $damage buffer = @s damage
    execute if score $damageType buffer matches 10.. run function main:combat/damage/display/space
    data modify storage combat: data.Damage.space set string storage combat: data.Damage.space
    data modify storage combat: buffer set from storage combat: data.Damage.space
    data modify storage combat: data.Damage.space set value ''
    function main:combat/damage/display/to_string with storage combat:
# ダメージ表示
    execute store result storage combat: data.Damage.Amount int 1 run scoreboard players get @s damage
    execute unless score $damageType buffer matches 10.. run loot spawn ~ ~1.5 ~ loot main:combat/damage/single
    execute if score $damageType buffer matches 10.. run loot spawn ~ ~1.5 ~ loot main:combat/damage/combined
    execute at @s positioned ~ ~1.5 ~ as @e[sort=nearest,type=item,distance=..0.5] if entity @s[nbt={Item:{tag:{DisplayDamage:1b}}}] run tag @s add dmg_display
    execute as @e[tag=dmg_display,sort=nearest] run data modify entity @s CustomName set from entity @s Item.tag.display.Name
    execute as @e[tag=dmg_display,distance=..5,sort=nearest] run data merge entity @s {PickupDelay:32767,Age:5985,CustomNameVisible:1b}
# リセット
    scoreboard players reset $damage buffer
    tag @e[tag=dmg_display,distance=..5,sort=nearest] remove dmg_display
    data remove storage combat: buffer
    data remove storage combat: data.Damage
