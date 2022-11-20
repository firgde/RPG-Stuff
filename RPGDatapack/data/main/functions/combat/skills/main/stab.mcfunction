#スキルのクールダウン時間設定
    scoreboard players set @s skillCooldown 100
#攻撃する人
    tag @s add attacker
#ｽﾃｰﾀｽ更新
    function status:_general/get/update
#攻撃力計算(総攻撃力の120%)
    scoreboard players operation @s atkBuffer = @s atk
    scoreboard players operation @s atkBuffer *= #120 const
    scoreboard players operation @s atkBuffer /= #100 const
#ﾄﾞｯ
    execute at @s run function main:combat/skills/main/stab_rec
    #ノックバック
    scoreboard players set #kbpowerx buffer 15
    scoreboard players set #kbpowery buffer 10
    scoreboard players set #kbpowerz buffer 15
    execute rotated ~ 0 as @e[tag=hurt_skill] run function main:combat/damage/knockback
    execute as @e[tag=hurt_skill] run function main:combat/damage/deal
#リセット
    tag @s remove attacker
