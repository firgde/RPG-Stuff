# エンチャント可能なアイテムが入っているなら実行位置を-0.5ずらして実行
    execute at @n[tag=enchanter] positioned ~ ~-0.5 ~ if data block ~ ~ ~ Items[{Slot:4b,components:{"minecraft:custom_data":{Enchantable:1b}}}] unless data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".enchantments.data run function main:craft/enchanting/apply
# リセット
    advancement revoke @s only main:craft/enchanting/trigger
