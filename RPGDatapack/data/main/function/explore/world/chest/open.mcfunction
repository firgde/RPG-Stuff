# アイテムを置き換える
    function #asset:item/loot/load
# 初めて開けるなら進行度に加算
    execute if entity @s[tag=!explore.chest.discovered] run function main:explore/world/chest/open_new with entity @s data
# opnenedタグ付与
    tag @s add explore.chest.opened
# discoveredタグ付与
    tag @s add explore.chest.discovered
