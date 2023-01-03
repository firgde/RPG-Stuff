#スキルのクールダウン時間設定
    scoreboard players set @s skillCooldown 20
#攻撃する人
    tag @s add attacker
#ｽﾃｰﾀｽ更新
    function status:_general/get/update
#攻撃力計算(総攻撃力の20%)
    scoreboard players operation @s atkBuffer = @s atk
    scoreboard players operation @s atkBuffer *= $20 const
    scoreboard players operation @s atkBuffer /= $100 const
#後ろにｽﾊﾟｯ
    execute rotated ~ 0 positioned ^ ^ ^-1 as @e[distance=..1.25,team=hostile] run tag @s add hurt_skill
    execute as @e[tag=hurt_skill] run scoreboard players operation @s damage = @p[tag=attacker] atkBuffer
    execute if entity @e[tag=hurt_skill,distance=..2] if entity @s[nbt={SelectedItem:{tag:{Customnbt:{Unbreakable:0b}}}},gamemode=!creative] run function main:combat/durability/remove
    #ノックバック
    scoreboard players set $kbpowerx buffer 10
    scoreboard players set $kbpowery buffer 10
    scoreboard players set $kbpowerz buffer 10
    execute rotated ~180 0 as @e[tag=hurt_skill] run function main:combat/damage/knockback
    execute as @e[tag=hurt_skill] run function main:combat/damage/deal
    #演出
    playsound entity.player.attack.sweep master @s ~ ~ ~ 1 1
    execute rotated ~ 0 run particle sweep_attack ^ ^1 ^-1
#リセット
    scoreboard players reset $kbpowerx buffer
    scoreboard players reset $kbpowery buffer
    scoreboard players reset $kbpowerz buffer
    tag @s remove attacker
