# タイマーから2000減算
    scoreboard players remove @s heal_timer_mana 2000
# 回復量を1に
    scoreboard players set #heal_amount_mana buffer 1
    function status:int/mana/heal
