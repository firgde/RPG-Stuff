#Candestroyを削除
    item modify entity @s weapon.mainhand main:collect/break_op/reset
#素材/採掘レベルを特定
    item modify entity @s weapon.mainhand main:collect/break_op/tiers
#エリアを特定&代入
    execute if biome ~ ~ ~ main:overworld/plains run data modify storage collect: Minables set value "#main:collect/location/plains"
    execute if biome ~ ~ ~ main:overworld/snowfield run data modify storage collect: Minables set value "#main:collect/location/snowfield"
    execute if biome ~ ~ ~ main:overworld/mountains run data modify storage collect: Minables set value "#main:collect/location/mountains"
    execute if biome ~ ~ ~ main:overworld/volcano run data modify storage collect: Minables set value "#main:collect/location/volcano"
    execute if biome ~ ~ ~ main:overworld/desert run data modify storage collect: Minables set value "#main:collect/location/desert"
    execute if biome ~ ~ ~ main:underworld run data modify storage collect: Minables set value "#main:collect/location/underworld"
    item modify entity @s weapon.mainhand main:collect/break_op/location
#リセット
    data remove storage collect: Minables
