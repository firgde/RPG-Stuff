# this
    tag @s add this
# そもそも自分しか候補がいないならもちろん優先度は一番高い
    execute store result score $candidateCount buffer if entity @e[tag=homingCandidate]
    execute if score $candidateCount buffer matches 1 run scoreboard players set @s higher 0
# 自分より優先度が高いEntityがいないならターゲットに
    execute if score @s higher matches 0 run tag @s add target
# リセット
    scoreboard players reset @s higher
    tag @s remove this
