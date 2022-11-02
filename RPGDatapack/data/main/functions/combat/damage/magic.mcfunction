#引く
    scoreboard players operation @s hp -= @s debuffDamage
#演出
    function main:combat/damage/display
#体力が0ならﾀﾋ
    execute if score @s hp matches ..0 run tag @s remove debuff.fire
    execute if score @s hp matches ..0 run data modify entity @s HasVisualFire set value 0b
    execute if score @s hp matches ..0 run function main:combat/damage/death
