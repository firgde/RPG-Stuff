# 合成した属性によって分岐
    #炎単体
    execute if entity @s[tag=!magic.combined] run function main:combat/attack/magic/tick/particle/fire/simple

    #炎×炎
    execute if entity @s[tag=magic.combine.fire] run function main:combat/attack/magic/tick/particle/fire/fire
    #炎×氷
    execute if entity @s[tag=magic.combine.ice] run function main:combat/attack/magic/tick/particle/fire/ice
    #炎×風
    execute if entity @s[tag=magic.combine.wind] run function main:combat/attack/magic/tick/particle/fire/wind
    #炎×雷
    execute if entity @s[tag=magic.combine.thunder] run function main:combat/attack/magic/tick/particle/fire/thunder
