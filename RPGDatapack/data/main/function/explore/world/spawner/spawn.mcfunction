# ブロックに埋まっているなら少し上に
    execute unless block ~ ~ ~ #main:no_collision run function main:explore/world/spawner/offset_y
# dataに保存されているIDをマクロで呼び出す
    $function asset:mob/$(id)/summon
# 自身は消す
    kill @s
