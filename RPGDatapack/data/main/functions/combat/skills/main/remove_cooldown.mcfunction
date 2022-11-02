#減算
    scoreboard players remove @s skillCooldown 1
#ゼロならｶﾁｯと通知
    execute if score @s skillCooldown matches 0 run playsound ui.button.click master @s ~ ~ ~ 1 2
