#遠距離魔法共通の処理
    #持っている速度タグで速さが変わる
    tp @s[tag=spd.slow] ^ ^ ^0.1
    tp @s[tag=spd.normal] ^ ^ ^0.3
    tp @s[tag=spd.fast] ^ ^ ^1
    #taretタグが付いたEntityがいるならそちらを追尾
    execute at @e[tag=followTarget] unless score @e[limit=1,sort=nearest] playerID = @s playerID at @s facing entity @e[tag=followTarget,limit=1] eyes run tp @s ~ ~ ~ ~ ~
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
    execute if score @s flyratio >= @s frate run function main:combat/attack/magic/follow/specify
    #時間切れで/kill
    execute if score @s flyTimer >= @s flyTime run kill @s
    #当たり判定
    execute align xz if entity @s[tag=!mob_summoned] unless score @s playerID = @e[limit=1,dx=0] playerID as @e[limit=1,dx=0] positioned ~0.5 ~ ~0.5 run function main:combat/attack/magic/damage
    execute align xz if entity @s[tag=mob_summoned] as @e[limit=1,dx=0,type=player] positioned ~0.5 ~ ~0.5 run function main:combat/attack/magic/damage
