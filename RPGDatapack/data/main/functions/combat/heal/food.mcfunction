#タグ付け
    tag @s add eating
#今現在食べているアイテムの回復量を取得
    execute store result score @s[advancements={main:combat/heal/eating_item={mainhand=true}}] healAmountHP run data get entity @s SelectedItem.tag.Customnbt.HealAmountHP
    execute store result score @s[advancements={main:combat/heal/eating_item={offhand=true}}] healAmountHP run data get entity @s Inventory[{Slot:-106b}].tag.Customnbt.HealAmountHP
    execute store result score @s[advancements={main:combat/heal/eating_item={mainhand=true}}] healAmountMP run data get entity @s SelectedItem.tag.Customnbt.HealAmountMP
    execute store result score @s[advancements={main:combat/heal/eating_item={offhand=true}}] healAmountMP run data get entity @s Inventory[{Slot:-106b}].tag.Customnbt.HealAmountMP
#タイマー加算
    scoreboard players add @s foodTimer 1
#リセット
    advancement revoke @s only main:combat/heal/eating_item
