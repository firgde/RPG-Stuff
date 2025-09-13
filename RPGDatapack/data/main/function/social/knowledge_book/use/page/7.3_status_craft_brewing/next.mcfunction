# アイテム返還
    execute unless items entity @a[limit=1] player.cursor * run item replace entity @a[limit=1] player.cursor from block 0 -59 0 container.0
# ページ移動
    scoreboard players add @s sub_page 1
# 一旦中身リセット
    data remove entity @s Items[{Slot:0b}]
    data remove entity @s Items[{Slot:1b}]
    data remove entity @s Items[{Slot:2b}]
    data remove entity @s Items[{Slot:3b}]
    data remove entity @s Items[{Slot:4b}]
    data remove entity @s Items[{Slot:5b}]
    data remove entity @s Items[{Slot:6b}]
    data remove entity @s Items[{Slot:7b}]
    data remove entity @s Items[{Slot:8b}]
    data remove entity @s Items[{Slot:9b}]
    data remove entity @s Items[{Slot:10b}]
    data remove entity @s Items[{Slot:11b}]
    data remove entity @s Items[{Slot:12b}]
    data remove entity @s Items[{Slot:13b}]
    data remove entity @s Items[{Slot:14b}]
    data remove entity @s Items[{Slot:15b}]
    data remove entity @s Items[{Slot:16b}]
    data remove entity @s Items[{Slot:17b}]
# レシピ情報
    function main:social/knowledge_book/use/page/7.3_status_craft_brewing/load_page
# 音
    execute as @a[limit=1] at @s run playsound item.book.page_turn master @s ~ ~ ~ 2 1
