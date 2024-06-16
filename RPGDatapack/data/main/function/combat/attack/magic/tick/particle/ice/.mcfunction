# 合成した属性によって分岐
    #氷単体
    execute if entity @s[tag=!magic.combined] run function main:combat/attack/magic/tick/particle/ice/simple

    #氷×炎
    execute if entity @s[tag=magic.combine.fire] run function main:combat/attack/magic/tick/particle/ice/fire
    #氷×氷
    execute if entity @s[tag=magic.combine.ice] run function main:combat/attack/magic/tick/particle/ice/ice
    #氷×風
    execute if entity @s[tag=magic.combine.wind] run function main:combat/attack/magic/tick/particle/ice/wind
    #氷×雷
    execute if entity @s[tag=magic.combine.thunder] run function main:combat/attack/magic/tick/particle/ice/thunder
