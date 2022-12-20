#スコアを二進数に直し、財布に代入する
    scoreboard players operation #sum buffer = @s money
    execute if score #sum buffer matches 1.. run data modify storage money: sum.0 set value 1
    execute if score #sum buffer matches 2.. run data modify storage money: sum.1 set value 1
    execute if score #sum buffer matches 4.. run data modify storage money: sum.2 set value 1
    execute if score #sum buffer matches 8.. run data modify storage money: sum.3 set value 1
    execute if score #sum buffer matches 16.. run data modify storage money: sum.4 set value 1
    execute if score #sum buffer matches 32.. run data modify storage money: sum.5 set value 1
    execute if score #sum buffer matches 64.. run data modify storage money: sum.6 set value 1
    execute if score #sum buffer matches 128.. run data modify storage money: sum.7 set value 1
    execute if score #sum buffer matches 256.. run data modify storage money: sum.8 set value 1
    execute if score #sum buffer matches 512.. run data modify storage money: sum.9 set value 1
    execute if score #sum buffer matches 1024.. run data modify storage money: sum.10 set value 1
    execute if score #sum buffer matches 2048.. run data modify storage money: sum.11 set value 1
    execute if score #sum buffer matches 4096.. run data modify storage money: sum.12 set value 1
    execute if score #sum buffer matches 8192.. run data modify storage money: sum.13 set value 1
    execute if score #sum buffer matches 16384.. run data modify storage money: sum.14 set value 1
    execute if score #sum buffer matches 32768.. run data modify storage money: sum.15 set value 1
    execute if score #sum buffer matches 65536.. run data modify storage money: sum.16 set value 1
    execute if score #sum buffer matches 131072.. run data modify storage money: sum.17 set value 1
    execute if score #sum buffer matches 262144.. run data modify storage money: sum.18 set value 1
    execute if score #sum buffer matches 524288.. run data modify storage money: sum.19 set value 1
    execute if score #sum buffer matches 1048576.. run data modify storage money: sum.20 set value 1
    execute if score #sum buffer matches 2097152.. run data modify storage money: sum.21 set value 1
    execute if score #sum buffer matches 4194304.. run data modify storage money: sum.22 set value 1
    execute if score #sum buffer matches 8388608.. run data modify storage money: sum.23 set value 1
    execute if score #sum buffer matches 16777216.. run data modify storage money: sum.24 set value 1
    execute if score #sum buffer matches 33554432.. run data modify storage money: sum.25 set value 1
    execute if score #sum buffer matches 67108864.. run data modify storage money: sum.26 set value 1
    execute if score #sum buffer matches 134217728.. run data modify storage money: sum.27 set value 1
    execute if score #sum buffer matches 268435456.. run data modify storage money: sum.28 set value 1
    execute if score #sum buffer matches 536870912.. run data modify storage money: sum.29 set value 1
    execute if score #sum buffer matches 1073741824.. run data modify storage money: sum.30 set value 1
    execute if score #sum buffer matches 2147483647 run data modify storage money: sum.31 set value 1

    loot give @s loot main:social/purse
#リセット
    data remove storage money: sum
    scoreboard players reset #sum buffer
