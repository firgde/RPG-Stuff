# 0-<リストの長さ>番目のどれかををストレージに保存、マクロからデータ追加function実行
    data modify storage rng: data.Min set value 0
    execute store result storage rng: data.Max int 1 run data get storage craft:enchanting data.ability.pool
    function main:get_rng with storage rng:
    execute store result storage craft:enchanting data.ability.select int 1 run scoreboard players get #rng buffer
    function main:craft/enchanting/ability/select with storage craft:enchanting data.ability
# リセット
    scoreboard players reset #rng buffer
    data remove storage craft:enchanting data.ability
