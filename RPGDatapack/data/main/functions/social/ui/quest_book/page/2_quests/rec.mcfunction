#一番後ろを消す
    data remove storage temp: data.Quest[-1]
#再帰カウント減算
    scoreboard players remove $rec buffer 1
#再帰
    execute if score $rec buffer matches 1.. run function main:social/ui/quest_book/page/2_quests/rec
