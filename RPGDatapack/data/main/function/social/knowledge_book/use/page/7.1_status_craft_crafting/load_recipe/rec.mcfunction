# データから■または空スロットに変換
# 色もここで確認
    $execute if data storage book: data.craft.crafting[$(index)].pattern[0][$(row)][{Slot:$(rec)b}] run data modify storage craft:temp data.temp[$(row)][{Slot:$(rec)b}].row set value $(row)
    $execute if data storage book: data.craft.crafting[$(index)].pattern[0][$(row)][{Slot:$(rec)b}] run function main:social/knowledge_book/use/page/7.1_status_craft_crafting/load_recipe/check_color with storage craft:temp data.temp[$(row)][{Slot:$(rec)b}]
    $execute unless data storage book: data.craft.crafting[$(index)].pattern[0][$(row)][{Slot:$(rec)b}] run data modify storage craft:temp data.temp[$(row)] insert $(column) value {text:"\uF826",Slot:$(rec)b}
    $execute if data storage book: data.craft.crafting[$(index)].pattern[0][$(row)][{Slot:$(rec)b}] run function main:social/knowledge_book/use/page/7.1_status_craft_crafting/load_recipe/set_string with storage craft:temp data.temp[$(row)][{Slot:$(rec)b}]

# 現在処理中のスロットを更新
    execute store result storage craft:temp rec byte 1 run scoreboard players add #rec_ buffer 1
    scoreboard players operation #temp buffer = #rec_ buffer
    execute store result storage craft:temp row int 1 run scoreboard players operation #temp buffer /= #3 const
    scoreboard players operation #temp buffer = #rec_ buffer
    execute store result storage craft:temp column int 1 run scoreboard players operation #temp buffer %= #3 const
    scoreboard players reset #temp buffer
    execute if score #rec_ buffer matches ..8 run function main:social/knowledge_book/use/page/7.1_status_craft_crafting/load_recipe/rec with storage craft:temp
