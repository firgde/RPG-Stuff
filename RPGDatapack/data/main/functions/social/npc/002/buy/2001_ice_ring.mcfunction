#お代を頂く
    execute if score @s money matches 200.. run scoreboard players remove @s money 200
#実際に取引で買ったアイテムを削除
    clear @s stick{CustomModelData:2001}
#本物のアイテムどうぞ
    execute if score @s money matches 200.. run function items:2001_ice_ring
#修行...ではなく金が足りぬようだな
    execute unless score @s money matches 200.. run playsound entity.villager.no master @s ~ ~ ~ 1 1
    execute unless score @s money matches 200.. run tellraw @s {"translate":"social.text.nomoney","color": "red"}
#おサイフ
    loot give @s loot main:social/purse
#リセット
    advancement revoke @s only main:social/buy/id002/2001_ice_ring
