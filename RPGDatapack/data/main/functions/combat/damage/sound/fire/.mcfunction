# 合成属性によって分岐
    execute if score #sideElement buffer matches 1 run function main:combat/damage/sound/fire/fire
    execute if score #sideElement buffer matches 2 run function main:combat/damage/sound/fire/ice
    execute if score #sideElement buffer matches 3 run function main:combat/damage/sound/fire/wind
    execute if score #sideElement buffer matches 4 run function main:combat/damage/sound/fire/thunder
