# 会心攻撃
    tag @s add attack.crit
# 計算します。
    scoreboard players operation @s crtBuffer = @s crt
    scoreboard players add @s crtBuffer 130
    scoreboard players operation @s dealtDamage = @s crtBuffer
# 表示する色を変える
    scoreboard players set $damagetype buffer 5
# 通知
    tellraw @s {"translate":"combat.text.crit","color":"#FF0000"}
# リセット
    scoreboard players reset @s crtBuffer
