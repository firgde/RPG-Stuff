#痛い
    tag @s add hurt
#誰に何でダメージを与えられたか
    function main:combat/damage/take/specify/9
#共通
    function main:combat/damage/deal
#リセット
    tag @s remove hurt
    scoreboard players set @s damage 0
    advancement revoke @s only main:combat/damage_taken
