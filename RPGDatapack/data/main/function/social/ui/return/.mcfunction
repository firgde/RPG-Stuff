# シュルカーボックスにアイテムを避難させる
    data modify block 0 -59 0 Items set from entity @s Items
    data remove block 0 -59 0 Items[{components:{"minecraft:custom_data":{ui:1b}}}]
# そしてアイテム還元
    execute as @a[limit=1] run loot give @s mine 0 -59 0 mainhand
