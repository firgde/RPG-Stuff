# 自分の位置にあるチェストにLootTableタグがないなら(=Lootがロードされたら)アイテムを置き換える
    execute if data block ~ ~ ~ Items run function main:explore/world/chest/open
