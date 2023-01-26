#撃つのは誰か
    tag @s add this
#パーティクル(Shapes Generator 万歳!)
    execute at @s facing entity @p eyes positioned ^ ^1 ^1 rotated ~ ~90 run function mobs:ai/2000_boss/fire_attack/particle
#何故かRotationタグを変える必要がある...?
    execute at @s run tp @s ~ ~ ~ facing entity @p
#1秒後に発射
    schedule function mobs:ai/2000_boss/fire_attack/check 20t
#時間調整
    scoreboard players set @s aiTimer 210
    function mobs:ai/2000_boss/reset_timer
