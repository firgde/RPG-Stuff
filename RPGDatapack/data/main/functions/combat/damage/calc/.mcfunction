# 属性取得(直接攻撃していない場合は無視)
    execute unless score #mainElement buffer matches 0 unless score #sideElement buffer matches 0 run function main:combat/damage/calc/element_combined
    execute if entity @s[type=player] if score #damageType buffer matches 1..4 run function main:combat/damage/calc/element_hostile
    execute if entity @s[type=!player] if score #damageType buffer matches 1..4 run function main:combat/damage/calc/element
# 属性相性を参照
    execute unless entity @s[tag=hurt.indirect] run function main:combat/damage/calc/resistance
# 無敵時間のあるなし
    execute if entity @s[tag=spawn] run scoreboard players operation @s damage /= #20 const
# 無敵時間
    execute if entity @s[tag=!hurt.indirect,type=!player] unless entity @s[tag=!hurt.melee,tag=!hurt.ranged] unless data entity @s Passengers run function main:combat/damage/calc/hurt_time
# 防御計算
    execute unless entity @s[tag=hurt.bypass_defense] run function main:combat/damage/calc/defense
# ダメージ減算
    #クリティカルの場合は色変更
    execute if entity @p[tag=attack.crit] run scoreboard players set #damageType buffer 5
    execute if score @s damage matches 1.. run scoreboard players operation @s hp -= @s damage
    scoreboard players operation @s hp > #0 const
    execute at @s run function main:combat/damage/display/
    #プレイヤーは体力の割合を計算
    execute if entity @s[type=player] run function status:hp/calc_ratio
    #死亡処理
    execute if score @s[tag=!boss] hp matches ..0 run function main:combat/damage/death
    #敵は体力をHUDに表示
    execute if entity @s[team=hostile,tag=!boss] unless score @s max_hp matches 2147483647 run function hud:hp_bar/calc
    #ボスは専用の演出
    execute if entity @s[tag=boss] run function main:combat/damage/boss
    #HurtTime設定
    scoreboard players set @s[type=!player] hurt_time 10
# 防具の耐久を減らす
    execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Customnbt:{armorType:"helmet",armor:1b}}}]},type=player] run function items:durability/remove_head
    execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{Customnbt:{armorType:"chestplate",armor:1b}}}]},type=player] run function items:durability/remove_chest
    execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{Customnbt:{armorType:"leggings",armor:1b}}}]},type=player] run function items:durability/remove_legs
    execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{Customnbt:{armorType:"boots",armor:1b}}}]},type=player] run function items:durability/remove_feet
# 必要ならば、演出
    execute if entity @s[tag=hurt.indirect] run damage @s 0.01 generic
    execute on passengers if entity @s[tag=atk_combo] on vehicle run damage @s 0.01 asset:combo_attack
    execute if score #damageType buffer matches 5 run playsound entity.player.attack.crit hostile @p ~ ~ ~ 1 1
    #属性ダメージ
    execute unless entity @s[tag=hurt.indirect] unless score #damageType buffer matches 0 unless score #damageType buffer matches 5 run function main:combat/damage/sound/
# リセット
    tag @s remove hurt
    tag @s remove hurt.melee
    tag @s remove hurt.ranged
    tag @s remove hurt.magic
    tag @s remove hurt.bypass_defense
    tag @s remove hurt.indirect
    tag @s remove hurt.combo
    scoreboard players reset #damageType buffer
    scoreboard players reset #mainElement
    scoreboard players reset #sideElement
    scoreboard players reset #hurtTime buffer
    scoreboard players reset @p atkBuffer
    scoreboard players reset @s damage
    scoreboard players reset @s defBuffer
