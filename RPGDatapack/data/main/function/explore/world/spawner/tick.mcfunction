# 周囲の敵対モブの数取得
    execute store result score #mob_count buffer if entity @e[team=hostile,distance=..7]
# 15体以上いるなら停止
    execute if score #mob_count buffer matches 15.. unless entity @s[tag=spawner.disabled] run function main:explore/world/spawner/disable
# 15体未満なら再起動
    execute if score #mob_count buffer matches ..14 if entity @s[tag=spawner.disabled] run function main:explore/world/spawner/enable
# 周囲にスポーンしたマーカーがあるならそこにモブスポーン
    execute as @e[tag=spawn_potential,distance=..50] at @s run function main:explore/world/spawner/spawn with entity @s ArmorItems[3].components."minecraft:custom_data"
# 自分の座標にブロックがない⇒壊された
    execute if block ~ ~ ~ #air run function main:explore/world/spawner/break
# リセット
    scoreboard players reset #mob_count buffer
