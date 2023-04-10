#減算
    scoreboard players remove @s currentSkillCooldown 1
#HUDの処理
    function hud:cooldown/calc
#ゼロならリセット
    execute if score @s currentSkillCooldown matches 0 run function main:combat/skills/reset
