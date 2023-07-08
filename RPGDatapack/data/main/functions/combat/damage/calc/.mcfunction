# 属性/デバフ取得
    execute unless score $mainElement buffer matches 0 unless score $sideElement buffer matches 0 run say combine
    execute if entity @s[type=player] if score $damageType buffer matches 1..4 run function main:combat/damage/calc/element_hostile
    execute if entity @s[type=!player] if score $damageType buffer matches 1..4 run function main:combat/damage/calc/element
    execute if entity @p[tag=attack.crit] run scoreboard players set $damageType buffer 5
# 属性相性を参照
    execute unless entity @s[tag=hurt_skill] run function main:combat/damage/calc/resistance
# 無敵時間のあるなし
    execute if entity @s[tag=spawn] run scoreboard players operation @s damage /= $20 const
# 実際の計算式
###damage = damage/1+(def/damage) >= 0
    scoreboard players operation @s defBuffer = @s def
    scoreboard players operation @s defBuffer *= $100 const
    scoreboard players operation @s defBuffer /= @s damage
    scoreboard players add @s defBuffer 100
    scoreboard players operation @s damage *= $100 const
    scoreboard players operation @s damage /= @s defBuffer
    scoreboard players operation @s damage > $0 const

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
    execute if score $damageType buffer matches 1 run playsound entity.player.hurt_on_fire player @s[type=player] ~ ~ ~ 1 1
    execute if score $damageType buffer matches 2 run playsound entity.player.hurt_freeze player @s[type=player] ~ ~ ~ 1 1
    execute if entity @s[tag=hurt_skill] run damage @s 1 generic
# リセット
    scoreboard players reset @p atkBuffer
    scoreboard players set @p dealtDamage 0
    tag @s remove hurt
    tag @s remove hurt.melee
    tag @s remove hurt.ranged
    tag @s remove hurt.magic
    tag @s remove hurt_skill
    scoreboard players reset $damageType buffer
    scoreboard players reset $mainElement buffer
    scoreboard players reset $sideElement buffer
    scoreboard players reset @p atkBuffer
    scoreboard players reset @p dealtDamage
    scoreboard players reset @s damage
    scoreboard players reset @s defBuffer
