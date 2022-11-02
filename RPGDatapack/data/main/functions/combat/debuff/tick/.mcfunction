#分岐ｨ
    execute if entity @s[tag=debuff.fire] run function main:combat/debuff/tick/fire
    execute if entity @s[tag=debuff.ice] run function main:combat/debuff/tick/ice
    execute if entity @s[tag=debuff.thunder] run function main:combat/debuff/tick/thunder
    execute if entity @s[tag=debuff.wind] run function main:combat/debuff/tick/wind
#もしデバフタグが一切存在しなかったらデバフタグを除去
    execute if entity @s[tag=!debuff.fire,tag=!debuff.ice,tag=!debuff.thunder,tag=!debuff.disturbed,tag=!debuff.poisoned,tag=!debuff.wither] run tag @s remove debuffed
