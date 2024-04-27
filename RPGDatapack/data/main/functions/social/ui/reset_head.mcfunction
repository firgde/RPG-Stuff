# onUIタグ消す
    item replace block 0 -59 0 container.0 from entity @s armor.head
    data remove block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_data".onUI
    item replace entity @s armor.head from block 0 -59 0 container.0
