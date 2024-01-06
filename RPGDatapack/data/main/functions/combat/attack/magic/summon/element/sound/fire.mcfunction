# 共通の音
    playsound item.firecharge.use player @p ~ ~ ~ 1 0.75
# 合成属性によって乗せる音を変える
    #炎×炎
    execute if entity @s[tag=magic.combine.fire] run playsound entity.firework_rocket.launch player @p ~ ~ ~ 1 0.75
    #炎×氷
    execute if entity @s[tag=magic.combine.ice] run playsound block.respawn_anchor.set_spawn player @p ~ ~ ~ 1 2
    #炎×風
    execute if entity @s[tag=magic.combine.wind] run playsound item.trident.riptide_3 player @p ~ ~ ~ 1 1
    #炎×雷
    execute if entity @s[tag=magic.combine.thunder] run playsound entity.lightning_bolt.thunder player @p ~ ~ ~ 0.75 2
