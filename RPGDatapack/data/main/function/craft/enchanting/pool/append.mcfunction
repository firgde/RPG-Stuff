# 既に候補に挙がっているなら、レベル上/下限を調整
    $execute if data storage craft:enchanting data.pool[{id:"$(id)"}] run function main:craft/enchanting/pool/check_level with storage craft:enchanting temp.pool
# 候補にないなら追加
    $execute unless data storage craft:enchanting data.pool[{id:"$(id)"}] run data modify storage craft:enchanting data.pool append from storage craft:enchanting temp.pool
# スキルエンチャントは別のリストへ
    data remove storage craft:enchanting data.pool[{ability_enchantment:true}]
    execute if data storage craft:enchanting temp.pool{ability_enchantment:true} run data modify storage craft:enchanting data.ability.pool append from storage craft:enchanting temp.pool
# エンチャント対象にそもそも対応していないなら消す
    $execute unless data storage book: data.craft.enchantment[{id:"$(id)",target:{$(item_type):true}}] run data remove storage craft:enchanting data.pool[{id:"$(id)"}]
    $execute unless data storage book: data.craft.enchantment[{id:"$(id)",target:{$(item_type):true}}] run data remove storage craft:enchanting data.ability.pool[{id:"$(id)"}]
# 競合エンチャントを参照
    $data modify storage craft:enchanting data.pool[{id:"$(id)"}].exclusive set from storage book: data.craft.enchantment[{id:"$(id)"}].exclusive
