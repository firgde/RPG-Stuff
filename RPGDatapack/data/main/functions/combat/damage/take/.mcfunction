# リセット
    advancement revoke @s only main:combat/damage_taken
# 自分で自分を攻撃したなら無効
    execute on attacker if entity @s[type=player] run return 0
# 痛い
    tag @s add hurt
# 誰に何でダメージを与えられたか
    execute if entity @s[advancements={main:combat/damage_taken={melee=true}}] on attacker run function main:combat/damage/take/melee
    execute if entity @s[advancements={main:combat/damage_taken={magic=true}}] on attacker run function main:combat/damage/take/magic
    execute if entity @s[advancements={main:combat/damage_taken={projectile=true}}] on attacker run function main:combat/damage/take/ranged
# 共通
    function main:combat/damage/calc/
# HP表示
    function status:hp/update
