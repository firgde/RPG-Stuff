# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:9b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:9b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:9b}].components
    execute unless data entity @s Items[{Slot:9b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s sub_page matches 1 run item replace entity @s container.9 with stick[custom_data={ui:1b,menu:"purse"},item_model="asset:gemstone_shard_remove",item_name={"translate":"social.ui.purse.count.-32","italic": false}] 32
    execute if score @s sub_page matches 1 run scoreboard players remove #moneycount buffer 32
    scoreboard players operation #moneycount buffer > #0 const
    #表示額
    execute if score @s page matches 2 if score @s sub_page matches 1 run scoreboard players operation #moneybuffer buffer = #moneycount buffer
    execute if score @s page matches 2 if score @s sub_page matches 1 run execute store result score #moneybuffer buffer run scoreboard players operation #moneybuffer buffer *= #moneyamount buffer
    execute if score @s page matches 2 if score @s sub_page matches 1 run loot replace entity @s container.26 loot main:social/ui/purse/button_confirm
    execute unless score @s sub_page matches 1 run item replace entity @s container.9 with stick[custom_data={ui:1b,menu:"purse"},tooltip_display={hide_tooltip:true},item_model="air"]
# 音
    execute if score @s sub_page matches 1 as @a at @s run playsound block.lantern.place master @s ~ ~ ~ 1 2
