# 雷×炎
    execute if entity @s[tag=magic.combine.fire] run playsound item.firecharge.use player @p ~ ~ ~ 1 1
    execute if entity @s[tag=magic.combine.fire] run playsound block.blastfurnace.fire_crackle player @p ~ ~ ~ 2 2
    execute if entity @s[tag=magic.combine.fire] run playsound entity.firework_rocket.twinkle_far player @p ~ ~ ~ 1 1
# 雷×氷
    execute if entity @s[tag=magic.combine.ice] run playsound block.amethyst_cluster.break player @p ~ ~ ~ 2 0.5
# 雷×風
    execute if entity @s[tag=magic.combine.wind] run playsound entity.blaze.death player @p ~ ~ ~ 1 2
    execute if entity @s[tag=magic.combine.wind] run playsound entity.breeze.death player @p ~ ~ ~ 1 0.5
# 雷×雷
    execute if entity @s[tag=magic.combine.thunder] run playsound entity.evoker.cast_spell player @p ~ ~ ~ 1 1
    execute if entity @s[tag=magic.combine.thunder] run playsound entity.lightning_bolt.thunder player @p ~ ~ ~ 0.5 2
    execute if entity @s[tag=magic.combine.thunder] run playsound entity.breeze.jump player @p ~ ~ ~ 1 0.5
