#お代を頂く
    scoreboard players remove @s money 75
#実際に取引で買ったアイテムを削除
    clear @s stick{CustomModelData:1100}
#本物のアイテムどうぞ
    function items:1100_wooden_hammer
#おサイフ
    function main:social/adjust_money
#リセット
    advancement revoke @s only main:social/buy/id001/1100_wooden_hammer
