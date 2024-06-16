# お金
    execute store result score #money buffer run data get entity @s Inventory[{components:{"minecraft:custom_data":{money:1b}}}].components."minecraft:custom_data".Amount
    scoreboard players operation @s money += #money buffer
# このアイテムは不要です。
    clear @s stick[custom_data~{money:1b}]
# リセット
    scoreboard players reset #money buffer
    advancement revoke @s only main:social/get_money
