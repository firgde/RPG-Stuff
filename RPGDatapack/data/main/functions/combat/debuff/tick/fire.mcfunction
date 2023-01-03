#時間の減算
    scoreboard players remove @s debuffTimer 1
#一秒毎にダメージ計算
    scoreboard players operation $damage buffer = @s debuffTimer
    scoreboard players operation $damage buffer %= $20 const
    #表示する色
    scoreboard players set $damagecolor buffer 2
    execute at @s if score $damage buffer matches 0 if score @s hp matches 1.. run particle lava ~ ~ ~ 0.1 0.1 0.1 0.75 10 normal
    execute if score $damage buffer matches 0 if score @s hp matches 1.. run function main:combat/damage/magic
    #もしタイマー<=0なら、デバフ除去
    execute if score @s debuffTimer matches ..0 run tag @s remove debuff.fire
    execute if score @s debuffTimer matches ..0 run data modify entity @s HasVisualFire set value 0
#リセット
    scoreboard players reset $damage buffer
