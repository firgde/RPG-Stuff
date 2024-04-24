# ゲームタイムを取得する
    execute store result score #gametime buffer run time query gametime
# アイテムに入っている値との差を計算
    execute store result score #cooldown buffer run data get entity @s SelectedItem.components.custom_data.magicData.CoolDown
    execute store result score #timeused buffer run data get entity @s SelectedItem.components.custom_data.magicData.TimeUsed
    scoreboard players operation #gametime buffer -= #timeused buffer
# 差>規定クールダウンならOK
    execute if score #gametime buffer >= #cooldown buffer run tag @s add verify_cooldown
