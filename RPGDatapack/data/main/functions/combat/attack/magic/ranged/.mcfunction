#遠距離魔法共通の処理
    #持っている速度タグで速さが変わる
    tp @s[tag=spd.slow] ^ ^ ^0.1
    tp @s[tag=spd.normal] ^ ^ ^0.3
    tp @s[tag=spd.fast] ^ ^ ^1
    #当たり判定
    execute at @s unless score @s playerID = @e[limit=1,dx=0] playerID as @e[dx=0] run function main:combat/attack/magic/damage
    #タイマー加算
    scoreboard players add @s flyTimer 1
    #時間切れで/kill
    execute if score @s flyTimer >= @s flyTime run kill @s
