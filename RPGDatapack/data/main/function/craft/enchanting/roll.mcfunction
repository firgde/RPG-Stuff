# poolのindex番目が当選
    $data modify block 0 -59 0 Items[{Slot:1b}].components."minecraft:custom_data".id set from storage craft:enchanting data.pool[$(index)].id
# レベル抽選    TODO: エンチャントレベルに対応
    $data modify storage rng: data.Max set from storage craft:enchanting data.pool[$(index)].lvl_max
    $data modify storage rng: data.Min set from storage craft:enchanting data.pool[$(index)].lvl_min
    function main:get_rng with storage rng: data
    execute store result block 0 -59 0 Items[{Slot:1b}].components."minecraft:custom_data".lvl int 1 run scoreboard players get #rng buffer
    scoreboard players reset #rng buffer
# 競合エンチャントも候補から消す
    $function main:craft/enchanting/remove_exclusive with storage craft:enchanting data.pool[$(index)]
# 消す
    $data modify storage craft:enchanting data.pool[$(index)].remove set value true
    data remove storage craft:enchanting data.pool[{remove:true}]
