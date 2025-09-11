# 取り出すアイテムを再設置
    item replace entity @s container.13 with stick
    data modify entity @s Items[{Slot:13b}].id set from storage player:context data.ui.backpack.item.id
    data modify entity @s Items[{Slot:13b}].components set from storage player:context data.ui.backpack.item.components
