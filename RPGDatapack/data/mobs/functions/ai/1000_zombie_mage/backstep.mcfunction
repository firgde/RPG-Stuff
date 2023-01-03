#ジャンプ！
    scoreboard players set #kbpowerx buffer -25
    scoreboard players set #kbpowery buffer 15
    scoreboard players set #kbpowerz buffer -25
    execute facing entity @p eyes run function main:combat/damage/knockback
