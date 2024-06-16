# 4つの中から絞り込み
    execute if score #mainElement buffer matches 1 run tag @s add magic.fire
    execute if score #mainElement buffer matches 2 run tag @s add magic.ice
    execute if score #mainElement buffer matches 3 run tag @s add magic.wind
    execute if score #mainElement buffer matches 4 run tag @s add magic.thunder
# 合成された
    tag @s add magic.combined
# 合成する属性によってタグ付け
    execute if score #sideElement buffer matches 1 run tag @s add magic.combine.fire
    execute if score #sideElement buffer matches 2 run tag @s add magic.combine.ice
    execute if score #sideElement buffer matches 3 run tag @s add magic.combine.wind
    execute if score #sideElement buffer matches 4 run tag @s add magic.combine.thunder
# 効果音
    execute if entity @s[tag=magic.fire] run function main:combat/attack/magic/summon/element/sound/fire
    execute if entity @s[tag=magic.ice] run function main:combat/attack/magic/summon/element/sound/ice
    execute if entity @s[tag=magic.wind] run function main:combat/attack/magic/summon/element/sound/wind
    execute if entity @s[tag=magic.thunder] run function main:combat/attack/magic/summon/element/sound/thunder
