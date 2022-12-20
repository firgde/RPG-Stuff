#お代を頂く
    scoreboard players remove @s money 50
#実際に取引で買ったアイテムを削除
    clear @s stick{CustomModelData:1000}
#本物のアイテムどうぞ
    function items:1000_wooden_sword
#おサイフ
    function main:social/adjust_money
#リセット
    advancement revoke @s only main:social/buy/id001/1000_wooden_sword
