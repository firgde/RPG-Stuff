#引く
    scoreboard players operation @s damage = @s debuffDamage
    scoreboard players operation @s hp -= @s debuffDamage
    scoreboard players operation @s hp > $0 const
#演出
    execute at @s run function main:combat/damage/display_amount
    damage @s 1 generic
    #敵は体力をHUDに表示
    execute if entity @s[team=hostile,tag=!boss] run function hud:hp_bar/calc
    #ボス限定
    execute if entity @s[tag=boss] run function main:combat/damage/boss
#体力が0ならﾀﾋ
    execute if score @s hp matches ..0 run tag @s remove debuff.fire
    execute if score @s hp matches ..0 run data modify entity @s HasVisualFire set value 0b
    execute if score @s[tag=!boss] hp matches ..0 run function main:combat/damage/death
#リセット
    scoreboard players reset $damagecolor buffer
