# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:26b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:26b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:26b}].components
    execute unless data entity @s Items[{Slot:26b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s page matches 0 as @a[limit=1] run loot replace entity @e[tag=purse,distance=..5] container.26 loot main:social/ui/purse/current
    execute if score @s page matches 2 if score @s sub_page matches 1 run loot replace entity @s container.26 loot main:social/ui/purse/button_confirm
    execute if score @s page matches 1 run function main:social/purse/use/
    execute if score @s page matches 1 run item replace entity @s container.26 with stick[custom_data={ui:1b,menu:"purse"},item_model="asset:confirm",item_name={"translate": "social.ui.purse.store.confirm"}]
    execute if score @s page matches 2 if score @s sub_page matches 1 run function main:social/purse/use/
