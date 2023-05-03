# タグ
    tag @s add enchanting
# ｽﾃｰﾀｽ更新
    function status:_general/get/update
# 再帰する回数を抽選
    function main:get_rng
    execute store result score $rec buffer run scoreboard players operation $rng buffer %= $4 const
    scoreboard players reset $rng buffer
# 再帰function
    function main:craft/enchanting/rec
# リセット
    tag @s remove enchanting
    scoreboard players reset $ebonusatk
    scoreboard players reset $ebonusmag
    scoreboard players reset $ebonusdex
    scoreboard players reset $ebonushp
    scoreboard players reset $ebonusint
    scoreboard players reset $ebonusdef
    scoreboard players reset $ebonusspd
    scoreboard players reset $ebonuscrt
    scoreboard players reset $ebonusluk
    scoreboard players reset $ebonusacc
    scoreboard players reset $efire
    scoreboard players reset $eice
    scoreboard players reset $ethunder
    scoreboard players reset $ewind
    scoreboard players reset $eskill
