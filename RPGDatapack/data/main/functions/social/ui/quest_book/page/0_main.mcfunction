#中身リセット
    data remove entity @s Items
#ページ移動
    scoreboard players set @s page 0
    scoreboard players set @s sub_page 0
#/itemたくさん
    item replace entity @s container.0 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.1 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.2 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.3 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.4 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.5 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.6 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.7 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.8 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.9 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.11 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.12 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.14 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.15 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.17 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.18 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.19 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.20 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.21 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.22 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.23 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.24 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.25 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.26 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
#ボタン
    execute as @p run loot replace entity @e[tag=quest_book,distance=..5] container.10 loot main:social/ui/quest_book/1_status/head_profile
    item replace entity @s container.13 with stick{ui:1b,menu:"quest_book",CustomModelData:8999,display:{Name:'{"translate":"social.ui.quest_book.quests","italic": false,"bold": true}'}}
    item replace entity @s container.16 with stick{ui:1b,menu:"quest_book",CustomModelData:0,display:{Name:'{"translate":""}'}}
