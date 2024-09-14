# 0.5ブロック上にtp
    tp @s ~ ~0.5 ~
# まだブロックがあるなら再帰
    execute unless block ~ ~ ~ #main:no_collision run function main:explore/world/spawner/offset_y
