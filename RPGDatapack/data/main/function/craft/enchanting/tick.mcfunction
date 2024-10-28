# アイテム表示処理
    execute if data block ~ ~ ~ Items[{Slot:4b}] run function main:craft/enchanting/display_item
    execute unless data block ~ ~ ~ Items[{Slot:4b}] positioned ~ ~0.5 ~ run item modify entity @n[tag=display_item,distance=..1] contents [{"function":"set_components","components":{"enchantment_glint_override":false,"item_model":"air"}},{"function":"set_item","item":"stick"}]
# UI処理
    execute at @p store success score @p pick if entity @s[distance=..6] run clear @p[distance=..6] stick[custom_data={ui:1b,menu:"enchanter"}]
