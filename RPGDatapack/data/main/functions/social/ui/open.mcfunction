# 頭装備にnbt付与
    item replace block 0 -59 0 container.0 from entity @s armor.head
    data modify block 0 -59 0 Items[{Slot:0b}].tag.Customnbt.onUI set value 1b
    item replace entity @s armor.head from block 0 -59 0 container.0
