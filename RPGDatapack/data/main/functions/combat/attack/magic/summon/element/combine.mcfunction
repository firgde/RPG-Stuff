say combine
# 合成された
    tag @s add magic.combined
# 合成する属性によってタグ付け
    execute if score $sideElement buffer matches 1 run tag @s add magic.combine.fire
    execute if score $sideElement buffer matches 2 run tag @s add magic.combine.ice
    execute if score $sideElement buffer matches 3 run tag @s add magic.combine.wind
    execute if score $sideElement buffer matches 4 run tag @s add magic.combine.thunder
