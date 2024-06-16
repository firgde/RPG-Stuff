# クールダウン中なら通知
    execute if score @s current_ability_cooldown matches 1.. run function main:combat/ability/on_cooldown
