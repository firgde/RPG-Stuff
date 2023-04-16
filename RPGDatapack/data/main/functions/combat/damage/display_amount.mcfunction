#ダメージ表示
    execute store result storage combat: data.Damage.Amount int 1 run scoreboard players get @s damage
    loot spawn ~ ~1.5 ~ loot main:combat/damage
    execute at @s positioned ~ ~1.5 ~ as @e[sort=nearest,type=item,distance=..0.5] if entity @s[nbt={Item:{tag:{DisplayDamage:1b}}}] run tag @s add dmg_display
    execute as @e[tag=dmg_display,sort=nearest] run data modify entity @s CustomName set from entity @s Item.tag.display.Name
    execute as @e[tag=dmg_display,distance=..5,sort=nearest] run data merge entity @s {PickupDelay:32767,Age:5985,CustomNameVisible:1b}
#リセット
    tag @e[tag=dmg_display,distance=..5,sort=nearest] remove dmg_display
    data remove storage combat: data.Damage
