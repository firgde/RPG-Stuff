# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:15b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:15b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:15b}].components
    execute unless data entity @s Items[{Slot:15b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s sub_page matches 1 run item replace entity @s container.15 with stick[custom_data={ui:1b,menu:"purse"},custom_model_data={floats:[8997]},item_name={"translate":"social.ui.purse.count.2","italic": false}] 2
    execute if score @s page matches 2 if score @s sub_page matches 0 run scoreboard players set #moneyamount buffer 50
    execute if score @s sub_page matches 1 run scoreboard players add #moneycount buffer 2
    execute if score @s page matches 2 run function main:social/purse/use/page/2.1_count
    execute if score @s page matches 0 run function main:social/purse/use/page/2_withdraw
    #表示額
    execute if score @s page matches 2 if score @s sub_page matches 1 run scoreboard players operation #moneybuffer buffer = #moneycount buffer
    execute if score @s page matches 2 if score @s sub_page matches 1 run execute store result score #moneybuffer buffer run scoreboard players operation #moneybuffer buffer *= #moneyamount buffer
    execute if score @s page matches 2 if score @s sub_page matches 1 run loot replace entity @s container.26 loot main:social/ui/purse/button_confirm
# 音
    execute if score @s sub_page matches 1 as @a at @s run playsound block.lantern.place master @s ~ ~ ~ 1 2
