#うまうま
    function main:combat/heal/hp
    function main:combat/heal/mp
#金リンゴエフェクトいらね
    effect clear @s absorption
    effect clear @s regeneration
#リセット
    advancement revoke @s only main:combat/heal/ate
    scoreboard players set @s foodTimer 0
    function main:combat/heal/reset
