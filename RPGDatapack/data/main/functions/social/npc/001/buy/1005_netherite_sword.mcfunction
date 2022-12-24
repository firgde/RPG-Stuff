#実際に取引で買ったアイテムを削除
    clear @s stick{CustomModelData:1005}
#本物のアイテムどうぞ
    execute if score @s money matches 300.. run function items:1005_netherite_sword
#修行...ではなく金が足りぬようだな
    execute unless score @s money matches 300.. run playsound entity.villager.no master @s ~ ~ ~ 1 1
    execute unless score @s money matches 300.. run tellraw @s {"translate":"social.text.nomoney","color": "red"}
#お代を頂く
    execute if score @s money matches 300.. run scoreboard players remove @s money 300
#おサイフ
    loot give @s loot main:social/purse
#リセット
    advancement revoke @s only main:social/buy/id001/1005_netherite_sword
