# 共通の音
    playsound entity.breeze.death player @p ~ ~ ~ 1 1
    #風×炎
    execute if entity @s[tag=magic.combine.fire] run playsound entity.breeze.jump player @p ~ ~ ~ 1 0.5
    execute if entity @s[tag=magic.combine.fire] run playsound block.fire.extinguish player @p ~ ~ ~ 1 1
    #風×氷
    execute if entity @s[tag=magic.combine.ice] run playsound entity.allay.ambient_without_item player @p ~ ~ ~ 2 2
    #風×風
    execute if entity @s[tag=magic.combine.wind] run playsound item.trident.riptide_3 player @p ~ ~ ~ 1 0.75
    #風×雷
    execute if entity @s[tag=magic.combine.thunder] run playsound entity.warden.sonic_boom player @p ~ ~ ~ 1 2
