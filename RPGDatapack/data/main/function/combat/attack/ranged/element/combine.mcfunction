# 4つの中から絞り込み
    execute if score #main_element buffer matches 1 run tag @s add arrow.fire
    execute if score #main_element buffer matches 2 run tag @s add arrow.ice
    execute if score #main_element buffer matches 3 run tag @s add arrow.wind
    execute if score #main_element buffer matches 4 run tag @s add arrow.thunder
# 合成された
    tag @s add arrow.element.combined
# 合成する属性によってタグ付け
    execute if score #side_element buffer matches 1 run tag @s add arrow.element.combine.fire
    execute if score #side_element buffer matches 2 run tag @s add arrow.element.combine.ice
    execute if score #side_element buffer matches 3 run tag @s add arrow.element.combine.wind
    execute if score #side_element buffer matches 4 run tag @s add arrow.element.combine.thunder
# 効果音
    execute if entity @s[tag=arrow.fire] run function main:combat/attack/ranged/arrow/sound/fire/
    execute if entity @s[tag=arrow.ice] run function main:combat/attack/ranged/arrow/sound/ice/
    execute if entity @s[tag=arrow.wind] run function main:combat/attack/ranged/arrow/sound/wind/
    execute if entity @s[tag=arrow.thunder] run function main:combat/attack/ranged/arrow/sound/thunder/
