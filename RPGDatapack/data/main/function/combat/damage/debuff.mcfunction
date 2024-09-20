# 戦闘中
    tag @p add in_combat
    scoreboard players set @p combat_timer 100
# 引く
    scoreboard players operation @s damage = #buff buff_amount
    #ダメージは最低でも1
    scoreboard players operation @s damage > #1 const
    scoreboard players operation @s hp -= @s damage
    scoreboard players operation @s hp > #0 const
# プレイヤーは体力の割合を計算
    execute if entity @s[type=player] run function status:hp/calc_ratio
    execute if entity @s[type=player] run function status:hp/update
# 演出
    execute at @s run function main:combat/damage/display/
    execute if entity @e[tag=this,tag=debuff,tag=debuff.fire] run damage @s 1 asset:magic/fire
    execute if entity @e[tag=this,tag=debuff,tag=debuff.fire_fire] run damage @s 1 asset:magic/fire
    execute if entity @e[tag=this,tag=debuff,tag=debuff.fire_thunder] run damage @s 1 asset:magic/fire
    execute if entity @e[tag=this,tag=debuff,tag=debuff.wind_fire] run damage @s 1 asset:magic/fire
    execute if entity @e[tag=this,tag=debuff,tag=debuff.thunder_wind] run damage @s 1 asset:magic/generic
    #敵は体力をHUDに表示
    execute if entity @s[team=hostile,tag=!boss] unless score @s max_hp matches 2147483647 run function hud:hp_bar/calc
    #ボス限定
    execute if entity @s[tag=boss] run function main:combat/damage/boss
# 体力が0ならﾀﾋ
    execute if score @s hp matches ..0 run data modify entity @s HasVisualFire set value 0b
    execute if score @s[tag=!boss] hp matches ..0 run function main:combat/damage/death
# 最後に攻撃されたモブ
    execute unless entity @s[type=player] run tag @e[distance=..50,team=hostile] remove hurt_last
    tag @s[type=!player] add hurt_last
# リセット
    scoreboard players reset #damageType buffer
