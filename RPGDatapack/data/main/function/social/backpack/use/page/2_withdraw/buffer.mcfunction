# 引き出すタグ
    tag @s add withdraw
# 0 -59 0のslot1にアイテムを仮置き
    #player.cursorから直接アイテムを移すと、実行順がclearの後になる。なぜ。
    #カーソルに持つ、インベントリに移動、投げ捨てるの3パターンに対応
    item replace block 0 -59 0 container.1 with stick
    execute if items entity @s player.cursor *[custom_data~{backpack_item:true}] run item replace block 0 -59 0 container.1 from entity @s player.cursor
    execute unless items entity @s player.cursor *[custom_data~{backpack_item:true}] run data modify block 0 -59 0 Items[{Slot:1b}].components set from entity @s Inventory[{components:{"minecraft:custom_data":{backpack_item:true}}}].components
    execute unless items entity @s player.cursor *[custom_data~{backpack_item:true}] if entity @s[advancements={main:social/backpack/pick_stick={throw=true}}] at @s as @e[type=item,distance=..5] if items entity @s contents *[custom_data~{backpack_item:true}] run item replace block 0 -59 0 container.1 from entity @s contents
    data modify block 0 -59 0 Items[{components:{"minecraft:custom_data":{backpack_item:true}}}].Slot set value 1b
loot give @s mine 0 -59 0
