#お金
    execute store result score $money buffer run data get entity @s Inventory[{tag:{Customnbt:{money:1b}}}].tag.Customnbt.Amount
    scoreboard players operation @s money += $money buffer
#このアイテムは不要です。
    clear @s stick{Customnbt:{money:1b}}
#リセット
    scoreboard players reset $money buffer
    advancement revoke @s only main:social/get_money
