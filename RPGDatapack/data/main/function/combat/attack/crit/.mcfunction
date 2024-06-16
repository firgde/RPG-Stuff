# 会心を取得
    scoreboard players operation @s crtBuffer = @s crt
    scoreboard players operation @s crtBuffer /= #2 const
# 乱数取得
    execute store result score #rng buffer run random value 1..100
# 会心率が乱数より高いならｸﾘﾃｨｶﾙ
    execute if score @s crtBuffer >= #rng buffer run function main:combat/attack/crit/calc
# 低いならそのまま
    execute if score @s crtBuffer <= #rng buffer run scoreboard players set @s dealtDamage 100
# リセット
    scoreboard players reset #rng
