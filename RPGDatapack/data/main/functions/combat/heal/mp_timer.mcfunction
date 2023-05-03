# タイマーから2000減算
    scoreboard players remove @s healTimerMP 2000
# 回復量を1に
    scoreboard players set @s healAmountMP 1
    function main:combat/heal/mp
