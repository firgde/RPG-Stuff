#Candestroyを削除
    item modify entity @s weapon.mainhand main:collect/break_op/reset
#素材/採掘レベルを特定
    item modify entity @s weapon.mainhand main:collect/break_op/tiers
#エリアを特定&代入
    execute if predicate main:explore/location/plains run data modify storage collect: Minables set value "#main:collect/location/plains"
    execute if predicate main:explore/location/snowfield run data modify storage collect: Minables set value "#main:collect/location/snowfield"
    execute if predicate main:explore/location/mountains run data modify storage collect: Minables set value "#main:collect/location/mountains"
    execute if predicate main:explore/location/volcano run data modify storage collect: Minables set value "#main:collect/location/volcano"
    execute if predicate main:explore/location/desert run data modify storage collect: Minables set value "#main:collect/location/desert"
    item modify entity @s weapon.mainhand main:collect/break_op/location
#リセット
    data remove storage collect: Minables
