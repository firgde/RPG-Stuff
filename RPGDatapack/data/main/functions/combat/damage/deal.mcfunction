#無敵時間のあるなし
    execute if entity @s[tag=spawn] run scoreboard players operation @s damage /= $20 const
#防御力を取得、攻撃力(ダメージ)との比率を計算
    scoreboard players operation @s defBuffer = @s def
    scoreboard players operation @s defBuffer *= $100 const
    scoreboard players operation @s defBuffer /= @s damage
    scoreboard players add @s defBuffer 100
#軽減率を取得
    scoreboard players operation $10000 buffer /= @s defBuffer
#からの軽減
    scoreboard players operation @s damage *= $100 const
    scoreboard players operation @s damage *= $10000 buffer
    scoreboard players operation @s damage /= $10000 const

#ダメージ減算
    execute if score @s damage matches 1.. run scoreboard players operation @s hp -= @s damage
    execute at @s run function main:combat/damage/display_amount
    execute if score @s[tag=!boss] hp matches ..0 run function main:combat/damage/death
    #ボスは専用の演出
    execute if entity @s[tag=boss] run function main:combat/damage/boss
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
    scoreboard players reset $damagecolor buffer
    scoreboard players set $10000 buffer 10000
