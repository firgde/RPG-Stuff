# 合成した属性によって分岐
    #雷単体
    execute if entity @s[tag=!magic.combined] run function main:combat/attack/magic/tick/particle/thunder/simple

    #雷×炎
    execute if entity @s[tag=magic.combine.fire] run function main:combat/attack/magic/tick/particle/fire/fire
    #雷×氷
    execute if entity @s[tag=magic.combine.ice] run function main:combat/attack/magic/tick/particle/thunder/ice
    #雷×風
    execute if entity @s[tag=magic.combine.wind] run function main:combat/attack/magic/tick/particle/thunder/wind
    #雷×雷
    execute if entity @s[tag=magic.combine.thunder] run function main:combat/attack/magic/tick/particle/thunder/thunder
