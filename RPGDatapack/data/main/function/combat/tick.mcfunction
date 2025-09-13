## 魔術攻撃のtick処理
    execute as @e[type=item_display,tag=magic] at @s run function main:combat/attack/magic/tick/
## 遠距離攻撃のtick処理
    execute as @a[limit=1] run function main:combat/attack/ranged/tick
## スキルのtick処理
    execute as @a[limit=1] at @s if score @s current_ability_cooldown matches 1.. run function main:combat/ability/tick
## 連撃のtick処理
    execute as @e[tag=atk_combo] run function main:combat/attack/combo/tick
## 戦闘中のtick処理
    execute as @a[limit=1,tag=in_combat] run function main:combat/in_combat
