# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:26b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:26b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:26b}].components
    execute unless data entity @s Items[{Slot:26b}] run item replace block 0 -59 0 container.0 with air
    execute unless score @s page matches 1 run item replace entity @s container.26 with stick[custom_data={ui:1b,menu:"backpack"},tooltip_display={hide_tooltip:true},item_model="air"]
# ページがマッチするならアクション
    execute if score @s page matches 1 unless data entity @s Items[0].components."minecraft:custom_data"{ui:1b} run function main:social/backpack/use/page/1_store/store
    execute if score @s page matches 1 run item replace entity @s container.26 with stick[custom_data={ui:1b,menu:"backpack"},item_model="asset:confirm",item_name={"translate": "social.ui.purse.store.confirm","italic": false}]
    execute if score @s page matches 3 unless score #item_count buffer matches 0 run function main:social/backpack/use/page/item/withdraw
    execute if score @s page matches 3 run loot replace entity @s container.26 loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"stick","functions":[{"function":"set_name","target":"item_name","entity":"this","name":{"translate":"social.ui.backpack.withdraw.confirm","with":[{"score":{"name":"#item_count","objective":"buffer"}}],"italic":false}},{"function":"set_custom_data","tag":"{ui:1b,menu:\"backpack\"}"},{"function":"set_components","components":{"item_model":"asset:confirm"}}]}]}]}
