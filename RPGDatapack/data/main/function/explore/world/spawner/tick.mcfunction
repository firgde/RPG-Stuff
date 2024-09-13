# 周囲にスポーンしたマーカーがあるならそこにモブスポーン
    execute as @e[type=marker,tag=spawn_potential,distance=..50] run function main:explore/world/spawner/spawn with entity @s data
# 自分の座標にブロックがない⇒壊された
    execute if block ~ ~ ~ #air run function main:explore/world/spawner/break
