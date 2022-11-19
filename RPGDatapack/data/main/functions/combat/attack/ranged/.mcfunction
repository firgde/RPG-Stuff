#ダメージ計算
    execute as @a[tag=attacker] run function status:_general/get/update
    #代入
    scoreboard players operation @a[tag=attacker] atkBuffer = @a[tag=attacker] dex
    #引き絞った時間をダメージに(tick*5%)
    scoreboard players operation @a[tag=attacker] chargeTimer *= #5 const
    scoreboard players operation @a[tag=attacker] atkBuffer *= @a[tag=attacker] chargeTimer
    scoreboard players operation @a[tag=attacker] atkBuffer /= #100 const
#共通
    function main:combat/damage/general
