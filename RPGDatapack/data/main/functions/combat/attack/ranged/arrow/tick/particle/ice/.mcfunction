# 合成した属性によって分岐
    #氷単体
    execute if entity @s[tag=!arrow.element.combined] run function main:combat/attack/ranged/arrow/tick/particle/ice/simple

    #氷×炎
    execute if entity @s[tag=arrow.element.combine.fire] run function main:combat/attack/ranged/arrow/tick/particle/ice/fire
    #氷×氷
    execute if entity @s[tag=arrow.element.combine.ice] run function main:combat/attack/ranged/arrow/tick/particle/ice/ice
    #氷×風
    execute if entity @s[tag=arrow.element.combine.wind] run function main:combat/attack/ranged/arrow/tick/particle/ice/wind
    #氷×雷
    execute if entity @s[tag=arrow.element.combine.thunder] run function main:combat/attack/ranged/arrow/tick/particle/ice/thunder
