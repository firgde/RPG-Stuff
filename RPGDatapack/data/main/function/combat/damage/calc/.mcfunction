# 戦闘中
    tag @a add in_combat
    scoreboard players set @a combat_timer 100
# 属性取得(直接攻撃していない、既にデバフを持っている場合は無視)
    execute unless score #main_element buffer matches 0 unless score #side_element buffer matches 0 run function main:combat/damage/calc/element_combined
    execute if entity @s[type=player,tag=!hurt.indirect] if score #damage_type buffer matches 1..4 run function main:combat/damage/calc/element_hostile
    execute if entity @s[type=!player,tag=!debuffed] if score #damage_type buffer matches 1..4 run function main:combat/damage/calc/element
# 属性相性を参照
    execute unless entity @s[tag=hurt.indirect] run function main:combat/damage/calc/resistance
# 無敵時間のあるなし
    execute if entity @s[tag=spawn] run scoreboard players operation @s damage /= #20 const
# 無敵時間
    execute if entity @s[tag=!hurt.indirect,type=!player] unless entity @s[tag=!hurt.melee,tag=!hurt.ranged] unless data entity @s Passengers run function main:combat/damage/calc/hurt_time
# 防御計算
    execute unless entity @s[tag=hurt.bypass_defense] run function main:combat/damage/calc/defense
# ダメージを受ける前の体力取得
    scoreboard players operation @s[team=hostile] prev_hp = @s hp
# ダメージ減算
    #クリティカルの場合は色変更
    execute if entity @a[tag=attack.crit] run scoreboard players set #damage_type buffer 5
    execute if score @s damage matches 1.. run scoreboard players operation @s hp -= @s damage
    scoreboard players operation @s hp > #0 const
    execute at @s run function main:combat/damage/display/
    #プレイヤーは体力の割合を計算
    execute if entity @s[type=player] run function status:hp/calc_ratio
    #敵は体力をHUDに表示
    execute if entity @s[tag=!boss,team=hostile] run function hud:hp_bar/calc
    execute if entity @s[type=player] on attacker run function hud:hp_bar/calc
    #死亡処理
    execute if score @s[tag=!boss] hp matches ..0 run function main:combat/damage/death
    #ボスは専用の演出
    execute if entity @s[tag=boss] run function main:combat/damage/boss
    #HurtTime設定
    scoreboard players set @s[type=!player] hurt_time 10
    #被ダメージ時の処理
    execute unless entity @s[type=player] run function #asset:combat/trigger/on_hurt
# 防具の耐久を減らす
    execute if items entity @s[type=player] armor.head *[custom_data~{armorType:"helmet",armor:1b}] run function items:durability/remove_head
    execute if items entity @s[type=player] armor.chest *[custom_data~{armorType:"chestplate",armor:1b}] run function items:durability/remove_chest
    execute if items entity @s[type=player] armor.legs *[custom_data~{armorType:"leggings",armor:1b}] run function items:durability/remove_legs
    execute if items entity @s[type=player] armor.feet *[custom_data~{armorType:"boots",armor:1b}] run function items:durability/remove_feet
# 必要ならば、演出
    execute if entity @s[tag=hurt.indirect] run damage @s 0.01 generic
    execute on passengers if entity @s[tag=atk_combo] on vehicle run damage @s 0.01 asset:combo_attack
    execute if score #damage_type buffer matches 5 run playsound entity.player.attack.crit hostile @a ~ ~ ~ 1 1
    execute if entity @s[team=hostile] if score #main_element buffer matches 1 at @s positioned ~ ~1 ~ facing entity @a[limit=1] eyes positioned ^ ^ ^0.26 run function asset:particle/fire_hit
    execute if entity @s[team=hostile] if score #main_element buffer matches 2 at @s positioned ~ ~1 ~ facing entity @a[limit=1] eyes positioned ^ ^ ^0.26 run function asset:particle/ice_hit
    execute if entity @s[team=hostile] if score #main_element buffer matches 3 at @s positioned ~ ~1 ~ facing entity @a[limit=1] eyes positioned ^ ^ ^0.26 run function asset:particle/wind_hit
    execute if entity @s[team=hostile] if score #main_element buffer matches 4 at @s positioned ~ ~1 ~ facing entity @a[limit=1] eyes positioned ^ ^ ^0.26 run function asset:particle/thunder_hit
    #属性ダメージ
    execute unless entity @s[tag=hurt.indirect] unless score #damage_type buffer matches 0 unless score #damage_type buffer matches 5 run function main:combat/damage/sound/
# 最後に攻撃されたモブ
    execute unless entity @s[type=player] run tag @e[distance=..50,team=hostile] remove hurt_last
    tag @s[type=!player] add hurt_last
# リセット
    tag @s remove hurt
    tag @s remove hurt.melee
    tag @s remove hurt.ranged
    tag @s remove hurt.magic
    tag @s remove hurt.bypass_defense
    tag @s remove hurt.indirect
    tag @s remove hurt.combo
    scoreboard players reset #damage_type buffer
    scoreboard players reset #main_element
    scoreboard players reset #side_element
    scoreboard players reset #hurtTime buffer
    scoreboard players reset @a atkBuffer
    scoreboard players reset @s damage
    scoreboard players reset @s defBuffer
