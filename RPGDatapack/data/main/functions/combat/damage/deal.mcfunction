#防御力を取得、攻撃力(ダメージ)との比率を計算
    scoreboard players operation @s defBuffer = @s def
    scoreboard players operation @s defBuffer *= #100 const
    scoreboard players operation @s defBuffer /= @s damage
    scoreboard players add @s defBuffer 100
#軽減率を取得
    scoreboard players operation #10000 buffer /= @s defBuffer
#からの軽減
    scoreboard players operation @s damage *= #100 const
    scoreboard players operation @s damage *= #10000 buffer
    scoreboard players operation @s damage /= #10000 const

#ダメージ減算
    execute if score @s damage matches 1.. run scoreboard players operation @s hp -= @s damage
    #ダメージ表示
    execute store result storage damage: Damage.Amount int 1 run scoreboard players get @s damage
    execute at @s run loot spawn ~ ~1.5 ~ loot main:combat/damage
    execute as @e[limit=1,sort=nearest,type=item] if entity @s[nbt={Item:{tag:{DisplayDamage:1b}}}] run tag @s add dmg_display
    execute as @e[tag=dmg_display,limit=1,sort=nearest] run data modify entity @s CustomName set from entity @s Item.tag.display.Name
    data merge entity @e[tag=dmg_display,limit=1,sort=nearest] {PickupDelay:32767,Age:5990,CustomNameVisible:1b}
    #tellraw Fridge_1203 [{"translate":"debugging.damage"}, {"score":{"name":"@e[tag=hurt,limit=1,sort=nearest]","objective":"damage"}}]
    execute if score @s hp matches ..0 run function main:combat/damage/death
#防具の耐久を減らす
    execute as @s[nbt={Inventory:[{Slot:103b,tag:{Customnbt:{armorType:"helmet",armor:1b}}}]},type=player] run function main:combat/durability/remove_head
    execute as @s[nbt={Inventory:[{Slot:102b,tag:{Customnbt:{armorType:"chestplate",armor:1b}}}]},type=player] run function main:combat/durability/remove_chest
    execute as @s[nbt={Inventory:[{Slot:101b,tag:{Customnbt:{armorType:"leggings",armor:1b}}}]},type=player] run function main:combat/durability/remove_legs
    execute as @s[nbt={Inventory:[{Slot:100b,tag:{Customnbt:{armorType:"boots",armor:1b}}}]},type=player] run function main:combat/durability/remove_feet
#必要ならば、演出
    execute if entity @s[tag=hurt_skill] run function main:combat/damage/display
#処理終わり
    tag @s remove hurt
    tag @s remove hurt_skill
    #data remove storage damage: Damage.Amount
    scoreboard players set #10000 buffer 10000
