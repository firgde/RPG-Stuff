# 合成属性によって分岐
    execute if score #side_element buffer matches 1 run function main:combat/damage/sound/thunder/fire
    execute if score #side_element buffer matches 2 run function main:combat/damage/sound/thunder/ice
    execute if score #side_element buffer matches 3 run function main:combat/damage/sound/thunder/wind
    execute if score #side_element buffer matches 4 run function main:combat/damage/sound/thunder/thunder
