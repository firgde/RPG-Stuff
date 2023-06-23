# 合成した属性によって分岐
    #風単体
    execute if entity @s[tag=!magic.combined] run function main:combat/attack/magic/tick/particle/wind/simple

    #風×炎
    execute if entity @s[tag=magic.combine.fire] run function main:combat/attack/magic/tick/particle/wind/fire
    #風×氷
    execute if entity @s[tag=magic.combine.ice] run function main:combat/attack/magic/tick/particle/wind/ice
    #風×風
    execute if entity @s[tag=magic.combine.wind] run function main:combat/attack/magic/tick/particle/wind/wind
    #風×雷
    execute if entity @s[tag=magic.combine.thunder] run function main:combat/attack/magic/tick/particle/wind/thunder
