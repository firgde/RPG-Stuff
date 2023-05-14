# 属性/デバフ取得
    execute if entity @s[type=!player,tag=!hurt_skill] unless data entity @p SelectedItem.tag{Customnbt:{Element:{Type:0}}} store result score $damagetype buffer run data get entity @p SelectedItem.tag.Customnbt.Element.Type
    execute if entity @s[type=!player,tag=!hurt_skill] if data entity @p SelectedItem.tag{Customnbt:{Element:{Type:0}}} if data entity @p Inventory[{Slot:-106b}].tag{Customnbt:{offhandOnly:1b}} store result score $damagetype buffer run data get entity @p Inventory[{Slot:-106b}].tag.Customnbt.Element.Type
    execute if entity @s[type=player] on attacker if data entity @s HandItems[0].tag.Customnbt.Element.Type store result score $damagetype buffer run data get entity @s HandItems[0].tag.Customnbt.Element.Type
    execute if entity @s[type=player] on attacker unless data entity @s HandItems[0].tag.Customnbt.Element.Type if data entity @s HandItems[1].tag{Customnbt:{offhandOnly:1b}} store result score $damagetype buffer run data get entity @s HandItems[1].tag.Customnbt.Element.Type
    execute if entity @s[type=!player] if score $damagetype buffer matches 1..4 run function main:combat/damage/calc/element
    execute if entity @s[type=player] if score $damagetype buffer matches 1..4 run function main:combat/damage/calc/element_hostile
    execute if entity @p[tag=attack.crit] run scoreboard players set $damagetype buffer 5
# 属性相性を参照
    execute unless entity @s[tag=hurt_skill] run function main:combat/damage/calc/resistance
# 無敵時間のあるなし
    execute if entity @s[tag=spawn] run scoreboard players operation @s damage /= $20 const
# 防御力を取得、攻撃力(ダメージ)との比率を計算
    scoreboard players operation @s defBuffer = @s def
    scoreboard players operation @s defBuffer *= $100 const
    scoreboard players operation @s defBuffer /= @s damage
    scoreboard players add @s defBuffer 100
# 軽減率を取得
    scoreboard players operation $10000 buffer /= @s defBuffer
# からの軽減
    scoreboard players operation @s damage *= $100 const
    scoreboard players operation @s damage *= $10000 buffer
    scoreboard players operation @s damage /= $10000 const

# ダメージ減算
    execute if score @s damage matches 1.. run scoreboard players operation @s hp -= @s damage
    scoreboard players operation @s hp > $0 const
    execute at @s run function main:combat/damage/display_amount
    #プレイヤーは体力の割合を計算
    execute if entity @s[type=player] run function status:hp/calc_ratio
    #死亡処理
    execute if score @s[tag=!boss] hp matches ..0 run function main:combat/damage/death
    #敵は体力をHUDに表示
    execute if entity @s[team=hostile,tag=!boss] unless score @s max_hp matches 2147483647 run function hud:hp_bar/calc
    #ボスは専用の演出
    execute if entity @s[tag=boss] run function main:combat/damage/boss
# 防具の耐久を減らす
    execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Customnbt:{armorType:"helmet",armor:1b}}}]},type=player] run function items:durability/remove_head
    execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{Customnbt:{armorType:"chestplate",armor:1b}}}]},type=player] run function items:durability/remove_chest
    execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{Customnbt:{armorType:"leggings",armor:1b}}}]},type=player] run function items:durability/remove_legs
    execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{Customnbt:{armorType:"boots",armor:1b}}}]},type=player] run function items:durability/remove_feet
# 必要ならば、演出
    execute if score $damagetype buffer matches 1 run playsound entity.player.hurt_on_fire player @s[type=player] ~ ~ ~ 1 1
    execute if score $damagetype buffer matches 2 run playsound entity.player.hurt_freeze player @s[type=player] ~ ~ ~ 1 1
    execute if entity @s[tag=hurt_skill] run damage @s 1 generic
# リセット
    scoreboard players reset @p atkBuffer
    scoreboard players set @p dealtDamage 0
    tag @s remove hurt
    tag @s remove hurt_skill
    scoreboard players reset $damagetype buffer
    scoreboard players set $10000 buffer 10000
