# シュルカーボックスにアイテムを避難させる
    data modify block 0 -59 0 Items set from entity @s Items
    data remove block 0 -59 0 Items[{tag:{ui:1b}}]
# そしてアイテム還元
    execute as @p run loot give @s mine 0 -59 0 mainhand
