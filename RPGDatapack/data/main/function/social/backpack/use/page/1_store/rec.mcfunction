
    data modify storage temp: item set from entity @s Items[0]
    data modify storage temp: item.index set from entity @s Items[0].components."minecraft:custom_data".id
    data remove storage temp: item.Slot

    function main:social/backpack/use/page/1_store/validate with storage temp: item

    data remove entity @s Items[0]
    data remove storage temp: item
    execute unless data entity @s Items[0].components."minecraft:custom_data"{ui:1b} run function main:social/backpack/use/page/1_store/rec
