#痛い
    tag @s add hurt
#誰に何でダメージを与えられたか
    execute store result score @s[advancements={main:combat/damage_taken={melee=true}}] damage on attacker run scoreboard players get @s atk
    execute store result score @s[advancements={main:combat/damage_taken={projectile=true}}] damage on attacker run scoreboard players get @s dex
#共通
    function main:combat/damage/calc
#HP表示
    function status:hp/update
#リセット
    tag @s remove hurt
    scoreboard players set @s damage 0
    advancement revoke @s only main:combat/damage_taken
