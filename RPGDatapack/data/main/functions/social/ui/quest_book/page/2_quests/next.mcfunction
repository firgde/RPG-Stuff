#ページ移動
    scoreboard players add @s sub_page 1
#一旦中身リセット
    data remove entity @s Items[{Slot:10b}]
    data remove entity @s Items[{Slot:11b}]
    data remove entity @s Items[{Slot:12b}]
    data remove entity @s Items[{Slot:13b}]
    data remove entity @s Items[{Slot:14b}]
    data remove entity @s Items[{Slot:15b}]
    data remove entity @s Items[{Slot:16b}]
#スロット10-16を埋める
    #一時的ストレージにデータ複製
    data modify storage temp: data set from storage social: data
    #(サブページ-1)×7個のオブジェクトをリストから削除
    scoreboard players operation $rec buffer = @s sub_page
    scoreboard players operation $rec buffer *= $7 const
    execute unless score @s sub_page matches 0 run function main:social/ui/quest_book/page/2_quests/rec
    #クエストを取得
    execute unless score @s sub_page matches 0 run item replace entity @s container.9 with stick{ui:1b,menu:"quest_book",CustomModelData:10026,display:{Name:'{"translate": "social.ui.quest_book.prev","italic": false}'}}
    execute if data storage temp: data.Quest[-1] run loot replace entity @s container.10 loot main:social/ui/quest_book/2_quests/quest_10
    execute if data storage temp: data.Quest[-2] run loot replace entity @s container.11 loot main:social/ui/quest_book/2_quests/quest_11
    execute if data storage temp: data.Quest[-3] run loot replace entity @s container.12 loot main:social/ui/quest_book/2_quests/quest_12
    execute if data storage temp: data.Quest[-4] run loot replace entity @s container.13 loot main:social/ui/quest_book/2_quests/quest_13
    execute if data storage temp: data.Quest[-5] run loot replace entity @s container.14 loot main:social/ui/quest_book/2_quests/quest_14
    execute if data storage temp: data.Quest[-6] run loot replace entity @s container.15 loot main:social/ui/quest_book/2_quests/quest_15
    execute if data storage temp: data.Quest[-7] run loot replace entity @s container.16 loot main:social/ui/quest_book/2_quests/quest_16
    execute if data storage temp: data.Quest[-8] run item replace entity @s container.17 with stick{ui:1b,menu:"quest_book",CustomModelData:10025,display:{Name:'{"translate": "social.ui.quest_book.next","italic": false}'}}
    item replace entity @s container.18 with stick{ui:1b,menu:"quest_book",CustomModelData:10024,display:{Name:'{"translate": "social.ui.quest_book.back","italic": false}'}}
