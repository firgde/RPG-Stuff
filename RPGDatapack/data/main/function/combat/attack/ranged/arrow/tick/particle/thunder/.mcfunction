# 合成した属性によって分岐
    #雷単体
    execute if entity @s[tag=!arrow.element.combined] run function main:combat/attack/ranged/arrow/tick/particle/thunder/simple

    #雷×炎
    execute if entity @s[tag=arrow.element.combine.fire] run function main:combat/attack/ranged/arrow/tick/particle/thunder/fire
    #雷×氷
    execute if entity @s[tag=arrow.element.combine.ice] run function main:combat/attack/ranged/arrow/tick/particle/thunder/ice
    #雷×風
    execute if entity @s[tag=arrow.element.combine.wind] run function main:combat/attack/ranged/arrow/tick/particle/thunder/wind
    #雷×雷
    execute if entity @s[tag=arrow.element.combine.thunder] run function main:combat/attack/ranged/arrow/tick/particle/thunder/thunder
