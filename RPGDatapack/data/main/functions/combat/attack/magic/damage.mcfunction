#そもそも誰が放ったのか
    execute as @e[limit=1,sort=nearest,tag=magic] at @a if score @s playerID = @p playerID run tag @p add attacker
#デバフ
    execute at @s run function main:combat/debuff/get
#ダメージを取得
    execute store result score @s damage run scoreboard players get @e[limit=1,sort=nearest,tag=magic.attack] mag
#演出
    particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 25
    particle crit ~ ~ ~ 0.1 0.3 0.1 0.5 25
    effect give @s[type=!#main:undead] instant_damage 1 0 true
    effect give @s[type=#main:undead] instant_health 1 0 true
#属性を特定
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.generic] run scoreboard players set #damagecolor buffer 0
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.fire] run scoreboard players set #damagecolor buffer 2
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.ice] run scoreboard players set #damagecolor buffer 3
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.thunder] run scoreboard players set #damagecolor buffer 4
    execute if entity @e[tag=magic,sort=nearest,limit=1,tag=magic.wind] run scoreboard players set #damagecolor buffer 5
#多段ヒット防止
    kill @e[tag=magic,sort=nearest,limit=1,tag=!multiple_hit]
#追尾されません
    tag @s remove target
#からの計算
    function main:combat/damage/deal
