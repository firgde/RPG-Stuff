#パーティクル
    execute if entity @s[tag=magic.generic] at @s run particle witch ~ ~ ~ 0 0 0 1 1 normal
    execute if entity @s[tag=magic.fire] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0 15 normal
    execute if entity @s[tag=magic.ice] at @s run particle dust 0.000 1.000 1.000 1 ~ ~ ~ 0 0 0 1 0 normal
    execute if entity @s[tag=magic.thunder] at @s run particle dust 1.000 0.969 0.000 1 ^ ^ ^ 0.05 0.05 0.05 0.5 3 normal
    execute if entity @s[tag=magic.thunder] at @s run particle dust 1 0.984 0.549 1 ^ ^ ^ 0.05 0.05 0.05 0.5 2 normal
    execute if entity @s[tag=magic.wind] at @s run particle sweep_attack ~ ~ ~ 0.1 0.1 0.1 0 1 normal
#持っている速度タグで速さが変わる
    tp @s[tag=spd.slow] ^ ^ ^0.1
    tp @s[tag=spd.normal] ^ ^ ^0.3
    tp @s[tag=spd.fast] ^ ^ ^1
#taretタグが付いたEntityがいるならそちらを追尾
    execute at @e[tag=followTarget] unless score @e[limit=1,sort=nearest] playerID = @s playerID at @s facing entity @e[tag=followTarget,limit=1] eyes run tp @s ~ ~ ~ ~ ~-30
#追跡後、一旦タグ削除
    tag @e[tag=followTarget,distance=..20] remove followTarget
#タイマー加算
    scoreboard players add @s flyTimer 1
#追尾システム(無理)
#まずは進んだ時間を算出
    execute store result score @s frate run scoreboard players get @p follow_rate
    execute store result score @s frate run scoreboard players operation $100 buffer -= @s frate
    scoreboard players set $100 buffer 100

    scoreboard players operation @s flyratio = @s flyTimer
    scoreboard players operation @s flyratio *= $100 const
    scoreboard players operation @s flyratio /= @s flyTime
#追尾対象絞り込み
    execute if score @s flyratio >= @s frate run function main:combat/attack/magic/follow/specify
#当たり判定
    execute align xz if entity @s[tag=!mob_summoned] unless score @s playerID = @e[limit=1,dx=0,type=!#main:non_mob] playerID as @e[limit=1,dx=0,type=!#main:non_mob] positioned ~0.5 ~ ~0.5 run function main:combat/damage/magic
    execute align xz if entity @s[tag=mob_summoned] as @e[limit=1,dx=0,type=player] positioned ~0.5 ~ ~0.5 run function main:combat/damage/magic
#時間切れで/kill
    execute if score @s flyTimer >= @s flyTime run kill @s
