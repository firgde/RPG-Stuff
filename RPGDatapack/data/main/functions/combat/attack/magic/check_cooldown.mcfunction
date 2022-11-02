#ゲームタイムを取得する
    execute store result score #gametime buffer run time query gametime
#アイテムに入っている値との差を計算
    execute store result score #cooldown buffer run data get entity @s SelectedItem.tag.Customnbt.magicType.CoolDown
    execute store result score #timeused buffer run data get entity @s SelectedItem.tag.Customnbt.magicType.TimeUsed
    scoreboard players operation #gametime buffer -= #timeused buffer
#差>規定クールダウンならOK
    execute if score #gametime buffer >= #cooldown buffer run tag @s add verify_cooldown
