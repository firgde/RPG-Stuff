#凍る
    execute store result score #buff debuffTimer run data get storage damage: Damage.debuffTimer
    scoreboard players operation @s debuffTimer += #buff debuffTimer
#バフ取得
    execute store result score #buff buffer run data get storage damage: Damage.buffAmount
    scoreboard players operation @s[tag=!debuff.ice] atk_buff < #buff buffer
    scoreboard players operation @s[tag=!debuff.ice] atk += @s atk_buff
#判定付けます
    tag @s add debuffed
    tag @s add debuff.ice