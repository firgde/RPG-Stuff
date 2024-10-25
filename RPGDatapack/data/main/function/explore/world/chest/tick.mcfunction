# 自分の位置にあるチェストにLootTableタグがないなら(=Lootがロードされたら)アイテムを置き換える
    execute unless data block ~ ~ ~ LootTable run function main:explore/world/chest/open
