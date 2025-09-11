
    $execute store result score #count buffer run data get storage player:backpack items[{index:$(index)}].count
    execute store result score #add_count buffer run data get storage temp: item.count
    $execute store result storage player:backpack items[{index:$(index)}].count int 1 run scoreboard players operation #count buffer += #add_count buffer
    scoreboard players reset #count buffer
