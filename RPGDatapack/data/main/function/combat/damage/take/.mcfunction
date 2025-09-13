# 痛い
    execute on attacker unless entity @s[type=player] run tag @a[limit=1] add hurt
# 誰に何でダメージを与えられたか
    execute on attacker if entity @a[limit=1,advancements={main:combat/damage_taken={melee=true}}] run function main:combat/damage/take/melee
    execute on attacker if entity @a[limit=1,advancements={main:combat/damage_taken={magic=true}}] run function main:combat/damage/take/magic
    execute on attacker if entity @a[limit=1,advancements={main:combat/damage_taken={projectile=true}}] run function main:combat/damage/take/ranged
# tellraw @a[limit=1] {score:{name:"@s",objective:"damage"}}
# 属性取得
    execute unless score #main_element buffer matches 0 if score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #main_element buffer
    execute if score #main_element buffer matches 0 unless score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #side_element buffer
# 被ダメージ時の処理
    function #asset:combat/trigger/on_hurt_player
# 共通
    execute on attacker unless entity @s[type=player] as @a[limit=1] run function main:combat/damage/calc/
# HP表示
    function status:hp/update
# リセット
    advancement revoke @s only main:combat/damage_taken
