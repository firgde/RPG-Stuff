#中身リセット
    data remove entity @s Items
#ページ移動
    scoreboard players set @s page 1
#/itemたくさん
    item replace entity @s container.1 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.3 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.5 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.7 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.9 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.10 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text":""}'}}
    item replace entity @s container.11 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.12 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.14 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.15 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.16 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.17 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.19 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.20 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.21 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.22 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.23 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.24 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.25 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}
    item replace entity @s container.26 with stick{ui:1b,menu:"quest_book",CustomModelData:1,display:{Name:'{"text": ""}'}}

#総合ステータスのスペース調整
    function main:social/ui/quest_book/page/1_status/get_space

#色々表示するやつ
    execute as @p run loot replace entity @e[tag=quest_book,distance=..5] container.0 loot main:social/ui/quest_book/1_status/combat
    execute as @p run loot replace entity @e[tag=quest_book,distance=..5] container.2 loot main:social/ui/quest_book/1_status/explore
    execute as @p run loot replace entity @e[tag=quest_book,distance=..5] container.4 loot main:social/ui/quest_book/1_status/collect
    execute as @p run loot replace entity @e[tag=quest_book,distance=..5] container.6 loot main:social/ui/quest_book/1_status/craft
    execute as @p run loot replace entity @e[tag=quest_book,distance=..5] container.8 loot main:social/ui/quest_book/1_status/social
    execute as @p run loot replace entity @e[tag=quest_book,distance=..5] container.13 loot main:social/ui/quest_book/1_status/head
    item replace entity @s container.18 with stick{ui:1b,menu:"quest_book",CustomModelData:10024,display:{Name:'{"translate": "social.ui.quest_book.back","italic": false}'}}
    execute as @p run loot replace entity @e[tag=quest_book,distance=..5] container.26 loot main:social/ui/quest_book/1_status/money
#リセット
    data remove storage space: text
