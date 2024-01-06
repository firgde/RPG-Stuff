# パーティクル
    #基本の紫
    particle witch ~ ~ ~ 0 0 0 1 1
    #メインの属性
    #炎
    execute if entity @s[tag=magic.fire] run function main:combat/attack/magic/tick/particle/fire/
    #氷
    execute if entity @s[tag=magic.ice] run function main:combat/attack/magic/tick/particle/ice/
    #風
    execute if entity @s[tag=magic.wind] run function main:combat/attack/magic/tick/particle/wind/
    #雷
    execute if entity @s[tag=magic.thunder] run function main:combat/attack/magic/tick/particle/thunder/
# 持っている速度タグで速さが変わる
    tp @s[tag=spd.1] ^ ^ ^0.1
    tp @s[tag=spd.2] ^ ^ ^0.2
    tp @s[tag=spd.4] ^ ^ ^0.4
    tp @s[tag=spd.8] ^ ^ ^0.8
    tp @s[tag=spd.16] ^ ^ ^1.6
# タイマー加算
    scoreboard players add @s flyTimer 1
# 進んだ時間を算出
    execute store result score @s frate run scoreboard players get @p follow_rate
    scoreboard players set $100 buffer 100
    execute store result score @s frate run scoreboard players operation $100 buffer -= @s frate
    scoreboard players reset $100 buffer
    scoreboard players operation @s flyratio = @s flyTimer
    scoreboard players operation @s flyratio *= $100 const
    scoreboard players operation @s flyratio /= @s flyTime
# 追尾対象絞り込み
    execute if score @s flyratio >= @s frate run function main:combat/attack/magic/homing/on_tick
# 当たり判定
    execute align xz if entity @s[tag=!mob_summoned] as @e[limit=1,dx=0,type=!#main:non_mob,type=!player] positioned ~0.5 ~ ~0.5 run damage @s 1 asset:magic/generic by @p
    execute align xz if entity @s[tag=mob_summoned] at @e[distance=..50] if score @s playerID = @e[limit=1,sort=nearest] playerID as @e[limit=1,sort=nearest] if entity @p[dx=0] positioned ~0.5 ~ ~0.5 run damage @p 1 asset:magic/generic by @s
# 時間切れで/kill
    execute if score @s flyTimer >= @s flyTime run kill @s
