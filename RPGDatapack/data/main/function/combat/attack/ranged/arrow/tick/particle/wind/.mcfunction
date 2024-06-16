# 合成した属性によって分岐
    #風単体
    execute if entity @s[tag=!arrow.element.combined] run function main:combat/attack/ranged/arrow/tick/particle/wind/simple

    #風×炎
    execute if entity @s[tag=arrow.element.combine.fire] run function main:combat/attack/ranged/arrow/tick/particle/wind/fire
    #風×氷
    execute if entity @s[tag=arrow.element.combine.ice] run function main:combat/attack/ranged/arrow/tick/particle/wind/ice
    #風×風
    execute if entity @s[tag=arrow.element.combine.wind] run function main:combat/attack/ranged/arrow/tick/particle/wind/wind
    #風×雷
    execute if entity @s[tag=arrow.element.combine.thunder] run function main:combat/attack/ranged/arrow/tick/particle/wind/thunder
