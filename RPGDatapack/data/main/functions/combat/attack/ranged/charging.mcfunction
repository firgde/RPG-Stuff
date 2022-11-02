#弓を使っていたならリセット
    execute if score @s usedBow matches 1.. run function main:combat/attack/ranged/reset
#スコアが25未満なら加算
    execute if score @s chargeTimer matches ..24 run scoreboard players add @s chargeTimer 1
    advancement revoke @s only main:combat/attack/ranged/using_bow
