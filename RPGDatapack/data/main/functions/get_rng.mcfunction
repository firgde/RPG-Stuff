# AEC
    summon area_effect_cloud ~ ~ ~ {Age:4,Duration:6,Tags: ["rng"]}
    execute store result score $rng buffer run data get entity @e[tag=rng,limit=1,sort=nearest] UUID[0]
# 最大値セット
    scoreboard players operation $rng buffer %= $rngMax buffer
# リセット
    scoreboard players reset $rngMax buffer
    kill @e[tag=rng]
