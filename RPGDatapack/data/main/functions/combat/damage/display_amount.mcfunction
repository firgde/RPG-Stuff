#ダメージ表示
    execute store result storage damage: Amount int 1 run scoreboard players get @s damage
    loot spawn ~ ~1.5 ~ loot main:combat/damage
    execute as @e[limit=1,sort=nearest,type=item] if entity @s[nbt={Item:{tag:{DisplayDamage:1b}}}] run tag @s add dmg_display
    execute as @e[tag=dmg_display,limit=1,sort=nearest] run data modify entity @s CustomName set from entity @s Item.tag.display.Name
    data merge entity @e[tag=dmg_display,limit=1,sort=nearest] {PickupDelay:32767,Age:5990,CustomNameVisible:1b}
    #tellraw Fridge_1203 [{"translate":"debugging.damage"}, {"score":{"name":"@e[tag=hurt,limit=1,sort=nearest]","objective":"damage"}}]
