# スタック可能な場合、ストレージに新規追加するか検知
    $execute unless data entity @s Items[0].components."minecraft:max_damage" if data storage player:backpack items[{index:$(index)}] run function main:social/backpack/use/page/1_store/increase with storage temp: item
    $execute unless data entity @s Items[0].components."minecraft:max_damage" unless data storage player:backpack items[{index:$(index)}] run data modify storage player:backpack items append from storage temp: item
# スタック負荷の場合、そのまま返還
    execute if data entity @s Items[0].components."minecraft:max_damage" run data modify block 0 -59 0 Items append from entity @s Items[0]
