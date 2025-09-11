# 一番前を消す
    data remove storage temp: data.craft.enchantment[0]
# 再帰カウント減算
    scoreboard players remove #rec buffer 1
# 再帰
    execute if score #rec buffer matches 1.. run function main:social/knowledge_book/use/page/7.2_status_craft_enchantment/remove_data
