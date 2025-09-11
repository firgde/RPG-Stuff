# マクロでスロットにアイテム配置
    execute store result storage temp: temp.slot int 1 run scoreboard players get #rec buffer
    execute store result storage temp: temp.index int 1 run scoreboard players get #index buffer
    function main:social/knowledge_book/use/page/6_status_collect/place/ with storage temp: temp
# 1足す
    scoreboard players add #index buffer 1
# 再帰
    scoreboard players add #rec buffer 1
    execute if score #rec buffer matches ..17 run function main:social/knowledge_book/use/page/6_status_collect/rec
