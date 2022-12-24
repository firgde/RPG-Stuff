#実際に取引で買ったアイテムを削除
    clear @s stick{CustomModelData:1000}
#本物のアイテムどうぞ
    execute if score @s money matches 50.. run function items:1000_wooden_sword
#修行...ではなく金が足りぬようだな
    execute unless score @s money matches 50.. run playsound entity.villager.no master @s ~ ~ ~ 1 1
    execute unless score @s money matches 50.. run tellraw @s {"translate":"social.text.nomoney","color": "red"}
#お代を頂く
    execute if score @s money matches 50.. run scoreboard players remove @s money 50
#おサイフ
    loot give @s loot main:social/purse
#リセット
    advancement revoke @s only main:social/buy/id001/1000_wooden_sword
