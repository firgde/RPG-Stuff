#テキスト
    tellraw @s [{"text": "["},{"selector":"@e[tag=npc.000,distance=..10]"},{"text": "] "},{"translate": "social.text.npc.000_4"},{"text": "\uF822\uF828"}]
#クエスト受注処理
    #function items:8000_quest_paper
    function main:social/quest/000/recieve
