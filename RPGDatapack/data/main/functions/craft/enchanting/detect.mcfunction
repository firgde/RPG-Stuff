# エンチャント可能なアイテムが入っているなら実行位置を-0.5ずらして実行
    execute at @e[tag=enchanter,limit=1,sort=nearest] positioned ~ ~-0.5 ~ if data block ~ ~ ~ Items[{Slot:4b,components:{"minecraft:custom_data":{Enchantable:1b}}}] unless data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".Enchantments run function main:craft/enchanting/apply
# リセット
    advancement revoke @s only main:craft/enchanting/trigger
