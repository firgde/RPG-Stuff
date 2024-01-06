# 共通の音
    playsound block.glass.break player @p ~ ~ ~ 1 2
# 合成属性によって乗せる音を変える
    #氷×炎
    execute if entity @s[tag=magic.combine.fire] run playsound block.amethyst_block.resonate player @p ~ ~ ~ 2 0.5
    execute if entity @s[tag=magic.combine.fire] run playsound item.firecharge.use player @p ~ ~ ~ 1 1
    #氷×氷
    execute if entity @s[tag=magic.combine.ice] run playsound block.amethyst_block.break player @p ~ ~ ~ 1 1.5
    execute if entity @s[tag=magic.combine.ice] run playsound block.amethyst_block.resonate player @p ~ ~ ~ 1.5 1
    execute if entity @s[tag=magic.combine.ice] run playsound item.trident.return player @p ~ ~ ~ 1 0.5
    #氷×風
    execute if entity @s[tag=magic.combine.wind] run playsound item.trident.riptide_1 player @p ~ ~ ~ 1 0.75
    #氷×雷
    execute if entity @s[tag=magic.combine.thunder] run playsound block.respawn_anchor.deplete player @p ~ ~ ~ 2 2
    execute if entity @s[tag=magic.combine.thunder] run playsound block.amethyst_block.break player @p ~ ~ ~ 2 0.5
## (トライデント有能すぎん...?)
