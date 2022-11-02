#そもそも誰が放ったのか
    execute as @e[limit=1,sort=nearest,tag=magic] at @a if score @s playerID = @p playerID run tag @p add attacker
#デバフ
    execute at @s run function main:combat/debuff/get
#ダメージを取得
    execute store result score @s damage run scoreboard players get @e[limit=1,sort=nearest,tag=magic.attack] mag
#演出
    execute at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 0 1
    effect give @s[type=!#main:undead] instant_damage 1 0 true
    effect give @s[type=#main:undead] instant_health 1 0 true
#多段ヒット防止
    kill @e[tag=magic,sort=nearest,limit=1,tag=!multiple_hit]
#からの計算
    function main:combat/damage/deal
