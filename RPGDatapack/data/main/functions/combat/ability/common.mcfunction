# 検知ｨ！
    scoreboard players set @s usedRod 0
# クールダウンの現在値を設定
    scoreboard players operation @s current_ability_cooldown = @s ability_cooldown
# 通知
    tellraw @s {"translate": "combat.text.ability.use","with":[{"nbt": "SelectedItem.tag.Customnbt.Ability.Name","entity":"@p","interpret": true,"color": "aqua","bold": true}]}
