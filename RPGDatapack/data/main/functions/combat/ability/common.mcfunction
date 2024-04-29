# 検知ｨ！
    scoreboard players set @s usedRod 0
# クールダウンの現在値を設定
    scoreboard players operation @s[gamemode=!creative] current_ability_cooldown = @s ability_cooldown
# MP減算
    scoreboard players operation @s[gamemode=!creative] mana -= #mana_require buffer
# 通知
    tellraw @s {"translate": "combat.text.ability.use","with":[{"nbt": "SelectedItem.components.\"minecraft:custom_data\".Ability.Name","entity":"@p","interpret": true,"color": "aqua","bold": true}]}
# リセット
    scoreboard players reset #mana_require
