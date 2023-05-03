# 痛い
    tag @s add hurt
# 魔術攻撃
    tag @p add attack.magic
# ダメージを取得
    execute as @p run function status:_general/get/update
    execute store result score @s damage run scoreboard players get @p mag
# 演出
    execute at @s run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 25
    execute at @s run particle crit ~ ~ ~ 0.1 0.3 0.1 0.5 25
# 多段ヒット防止
    kill @e[tag=magic,sort=nearest,limit=1,tag=!multiple_hit]
# 追尾されません
    tag @s remove target
    tag @s remove followTarget
# からの計算
    function main:combat/damage/calc/
# リセット
    tag @p remove attack.magic
