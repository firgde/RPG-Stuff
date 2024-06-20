# 痛い
    execute on attacker unless entity @s[type=player] run tag @p add hurt
# 誰に何でダメージを与えられたか
    execute on attacker if entity @p[advancements={main:combat/damage_taken={melee=true}}] run function main:combat/damage/take/melee
    execute on attacker if entity @p[advancements={main:combat/damage_taken={magic=true}}] run function main:combat/damage/take/magic
    execute on attacker if entity @p[advancements={main:combat/damage_taken={projectile=true}}] run function main:combat/damage/take/ranged
# 属性取得
    execute unless score #mainElement buffer matches 0 if score #sideElement buffer matches 0 run scoreboard players operation #damageType buffer = #mainElement buffer
    execute if score #mainElement buffer matches 0 unless score #sideElement buffer matches 0 run scoreboard players operation #damageType buffer = #sideElement buffer
# 被ダメージ時の処理
    function #asset:combat/trigger/on_hurt_player
# 共通
    execute on attacker unless entity @s[type=player] as @p run function main:combat/damage/calc/
# HP表示
    function status:hp/update
# リセット
    advancement revoke @s only main:combat/damage_taken
