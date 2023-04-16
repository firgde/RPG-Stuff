#演出
    playsound entity.player.attack.sweep master @p ~ ~ ~ 1 1.5
#ノックバック弱体化
    scoreboard players operation @s damage = @p atk
    scoreboard players set $kbpowerx buffer 5
    scoreboard players set $kbpowery buffer 10
    scoreboard players set $kbpowerz buffer 5
    execute at @p run function main:combat/damage/knockback
#リセット
    scoreboard players reset $kbpowerx buffer
    scoreboard players reset $kbpowery buffer
    scoreboard players reset $kbpowerz buffer
