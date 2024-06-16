# 合成した属性によって分岐
    #炎単体
    execute if entity @s[tag=!arrow.element.combined] run function main:combat/attack/ranged/arrow/tick/particle/fire/simple

    #炎×炎
    execute if entity @s[tag=arrow.element.combine.fire] run function main:combat/attack/ranged/arrow/tick/particle/fire/fire
    #炎×氷
    execute if entity @s[tag=arrow.element.combine.ice] run function main:combat/attack/ranged/arrow/tick/particle/fire/ice
    #炎×風
    execute if entity @s[tag=arrow.element.combine.wind] run function main:combat/attack/ranged/arrow/tick/particle/fire/wind
    #炎×雷
    execute if entity @s[tag=arrow.element.combine.thunder] run function main:combat/attack/ranged/arrow/tick/particle/fire/thunder
