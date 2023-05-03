# AttributeModifierリセット
    attribute @s generic.luck modifier remove 1-0-0-0-A
    attribute @s generic.luck modifier remove 1-0-0-0-9
    attribute @s generic.luck modifier remove 1-0-0-0-8
    attribute @s generic.luck modifier remove 1-0-0-0-7
    attribute @s generic.luck modifier remove 1-0-0-0-6
    attribute @s generic.luck modifier remove 1-0-0-0-5
    attribute @s generic.luck modifier remove 1-0-0-0-4
    attribute @s generic.luck modifier remove 1-0-0-0-3
    attribute @s generic.luck modifier remove 1-0-0-0-2
    attribute @s generic.luck modifier remove 1-0-0-0-1
    attribute @s generic.luck modifier remove 1-0-0-0-0
    attribute @s generic.luck modifier remove 1-0-0-1-7
    attribute @s generic.luck modifier remove 1-0-0-1-6
    attribute @s generic.luck modifier remove 1-0-0-1-5
    attribute @s generic.luck modifier remove 1-0-0-1-4
    attribute @s generic.luck modifier remove 1-0-0-1-3
    attribute @s generic.luck modifier remove 1-0-0-1-2
    attribute @s generic.luck modifier remove 1-0-0-1-1
    attribute @s generic.luck modifier remove 1-0-0-1-0
# 運のAttributeModifier適用
    scoreboard players operation $lukbuffer buffer = @s luk
    scoreboard players operation $lukbuffer buffer *= $2^20 const
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-A "Luck10" 40.96 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-9 "Luck9" 20.48 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-8 "Luck8" 10.24 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-7 "Luck7" 5.12 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-6 "Luck6" 2.56 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-5 "Luck5" 1.28 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-4 "Luck4" 0.64 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-3 "Luck3" 0.08 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-2 "Luck2" 0.04 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-1 "Luck1" 0.02 add
    scoreboard players operation $lukbuffer buffer *= $2 const
    execute if score $lukbuffer buffer matches ..-1 run attribute @s generic.luck modifier add 1-0-0-0-0 "Luck0" 0.01 add
# lukの値を保存
    scoreboard players operation @s luk_prv = @s luk
# リセット
    scoreboard players reset $lukbuffer
