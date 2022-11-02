#スライムｶﾓｫｫｫｫﾝ
    summon slime ~ ~ ~ {NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:20,ShowParticles:0b}],Tags:["backstep"],Silent:1b,DeathTime:0}
#回数減算&ゼロでないなら繰り返し
    scoreboard players remove @s slimeCount 1
    execute if score @s slimeCount matches 1.. run function main:combat/skills/side/summon_slime
