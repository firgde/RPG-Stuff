## damage = 5 * (FallDistance - 3)
    scoreboard players operation @s damage = @s fall_distance
    scoreboard players operation @s damage *= #5 const
    scoreboard players remove @s damage 15
    execute if score @s damage matches 1.. run scoreboard players operation @s hp -= @s damage
    scoreboard players operation @s hp > #0 const
    execute at @s run function main:combat/damage/display/
    scoreboard players set @s[type=!player] hurt_time 10
# プレイヤーは体力の割合を計算
    function status:hp/calc_ratio
    execute if entity @s[type=player] run function status:hp/update
# 敵は体力をHUDに表示
    execute if entity @s[team=hostile] unless score @s max_hp matches 2147483647 run function hud:hp_bar/calc
# 死亡処理
    execute if score @s hp matches ..0 run function main:combat/damage/death
# リセット
    scoreboard players reset @s fall_distance
