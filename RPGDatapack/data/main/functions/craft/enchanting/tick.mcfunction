# アイテム表示処理
    execute if data block ~ ~ ~ Items[{Slot:4b}] run function main:craft/enchanting/display_item
    execute unless data block ~ ~ ~ Items[{Slot:4b}] run data merge entity @e[limit=1,tag=display_item,distance=..2] {Item:{id:"minecraft:stick",Count:1b,components:{custom_model_data:1,enchantments:{}}}},PickupDelay:32767,Tags:["getting_enchanted"],Age:-32768}
# UI処理
    execute at @p store success score @p pick if entity @s[distance=..6] run clear @p[distance=..6] stick[custom_data={ui:1b,menu:"enchanter"}]
