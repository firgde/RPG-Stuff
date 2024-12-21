# スロットも手も空の場合や耐久値のあるアイテムを持ってる場合はslot.0にアクセス
    execute at @n[type=interaction,tag=repair_slot.2] unless data entity @n[tag=repair_material,type=item_display] item if entity @s[advancements={main:craft/repairing/slot_2={left=true}}] run advancement grant @s only main:craft/repairing/slot_0 left
    execute unless items entity @s weapon.mainhand * at @n[type=interaction,tag=repair_slot.2] unless data entity @n[tag=repair_material,type=item_display] item if entity @s[advancements={main:craft/repairing/slot_2={right=true}}] run advancement grant @s only main:craft/repairing/slot_0 right
    execute if items entity @s weapon.mainhand *[max_damage] if entity @s[advancements={main:craft/repairing/slot_2={right=true}}] run advancement grant @s only main:craft/repairing/slot_0 right
# 修復専用アイテムしか置けない
    execute if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand *[custom_data~{repairMaterial:1b}] if entity @s[advancements={main:craft/repairing/slot_2={right=true}}] run advancement revoke @s only main:craft/repairing/slot_2
    execute if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand *[custom_data~{repairMaterial:1b}] if entity @s[advancements={main:craft/repairing/slot_2={right=true}}] run return 0
# slot.2のitem_displayからインベントリにアイテムを持ってくる
    item replace block 0 -59 0 container.1 with air
    execute if entity @s[advancements={main:craft/repairing/slot_2=true}] at @n[type=interaction,tag=repair_slot.2] run data modify block 0 -59 0 Items[{Slot:0b}] set from entity @n[tag=repair_material,type=item_display] item
    #左クリックしていたらアイテム消去
    execute if entity @s[advancements={main:craft/repairing/slot_2={left=true}}] at @n[type=interaction,tag=repair_slot.2] run item replace entity @n[tag=repair_material,type=item_display] contents with air
    #右クリックしていたら交換
    execute if entity @s[advancements={main:craft/repairing/slot_2={right=true}}] run function main:craft/repairing/slot_2/place
    #そしてアイテム還元
    execute if items entity @s weapon.mainhand * run loot give @s mine 0 -59 0 mainhand
    execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand from block 0 -59 0 container.0
# リセット
    item replace block 0 -59 0 container.0 with air
    advancement revoke @s only main:craft/repairing/slot_2
