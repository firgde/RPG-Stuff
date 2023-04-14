#そもそも誰が放ったのか
    #execute as @e[limit=1,sort=nearest,tag=magic] at @p if score @s playerID = @p playerID run tag @p add attacker
#属性
    execute at @s run function asset:combat/debuff/get
#ダメージを取得
    execute store result score @s damage run scoreboard players get @e[limit=1,sort=nearest,tag=magic.attack] mag
    #(HurtTime * 20)%減
    execute store result score $absorb buffer run data get entity @s HurtTime 20
    scoreboard players operation $100 buffer -= $absorb buffer
    scoreboard players operation @s damage *= $100 buffer
    scoreboard players operation @s damage /= $100 const
    scoreboard players operation @s damage > $0 const
#演出
    particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 25
    particle crit ~ ~ ~ 0.1 0.3 0.1 0.5 25
    damage @s 1 generic
#属性を特定
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.generic] run scoreboard players set $damagecolor buffer 0
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.fire] run scoreboard players set $damagecolor buffer 2
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.ice] run scoreboard players set $damagecolor buffer 3
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.thunder] run scoreboard players set $damagecolor buffer 4
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.wind] run scoreboard players set $damagecolor buffer 5
#多段ヒット防止
    kill @e[tag=magic,sort=nearest,limit=1,tag=!multiple_hit]
#追尾されません
    tag @s remove target
    tag @s remove followTarget
#からの計算
    function main:combat/damage/calc
#HP表示
    execute if entity @s[type=player] run function status:hp/calc_ratio
    execute if entity @s[type=player] run function status:hp/update
#リセット
    scoreboard players reset $absorb buffer
    scoreboard players set $100 buffer 100
