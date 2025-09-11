# アイテム返還
    execute unless items entity @a player.cursor * run item replace entity @a player.cursor from block 0 -59 0 container.0
# ページ移動
    scoreboard players remove @s sub_page 1
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
# アイテム一覧
    function main:social/backpack/use/page/2_withdraw/load_page
# 音
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 1.5
