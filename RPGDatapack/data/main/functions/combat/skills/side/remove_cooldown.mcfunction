#減算
    scoreboard players remove @s sideSkillCooldown 1
#ゼロならｶﾁｯと通知
    execute if score @s sideSkillCooldown matches 0 run playsound ui.button.click master @s ~ ~ ~ 1 2
