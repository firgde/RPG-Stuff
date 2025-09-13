# 4つの中から絞り込み
    execute if data storage buffer: data{Element:1} run tag @s add magic.fire
    execute if data storage buffer: data{Element:2} run tag @s add magic.ice
    execute if data storage buffer: data{Element:3} run tag @s add magic.wind
    execute if data storage buffer: data{Element:4} run tag @s add magic.thunder
# 音
    execute if entity @s[tag=magic.fire] run playsound item.firecharge.use player @a[limit=1] ~ ~ ~ 1 1.5
    execute if entity @s[tag=magic.ice] run playsound block.amethyst_block.resonate player @a[limit=1] ~ ~ ~ 1 1
    execute if entity @s[tag=magic.ice] run playsound item.trident.return player @a[limit=1] ~ ~ ~ 0.5 2
    execute if entity @s[tag=magic.wind] run playsound item.trident.riptide_1 player @a[limit=1] ~ ~ ~ 1 2
    execute if entity @s[tag=magic.thunder] run playsound entity.firework_rocket.twinkle player @a[limit=1] ~ ~ ~ 1 2
    execute if entity @s[tag=magic.thunder] run playsound entity.firework_rocket.blast player @a[limit=1] ~ ~ ~ 1 2

# リセット
    data remove storage buffer: data
