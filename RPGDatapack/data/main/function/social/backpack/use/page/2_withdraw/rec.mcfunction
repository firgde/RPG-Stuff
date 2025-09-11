# マクロでスロットにアイテム配置
    execute store result storage temp: temp.slot int 1 run scoreboard players get #rec buffer
    data modify storage temp: temp.index set from storage temp: items[0].index
    function main:social/backpack/use/page/2_withdraw/place with storage temp: temp
# データ消す
    data remove storage temp: items[0]
# 再帰
    scoreboard players add #rec buffer 1
    execute if score #rec buffer matches ..17 run function main:social/backpack/use/page/2_withdraw/rec
