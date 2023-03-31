#クラフトします
    tag @s add crafted
#データをstorageにまるっと移動
    data modify storage craft: data.ingredients set value [{Slot:0b,id:"none"},{Slot:1b,id:"none"},{Slot:2b,id:"none"},{Slot:3b,id:"none"},{Slot:4b,id:"none"},{Slot:5b,id:"none"},{Slot:6b,id:"none"},{Slot:7b,id:"none"},{Slot:8b,id:"none"}]
    execute at @e[tag=slot.0,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:0b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.tag.Customnbt.id
    execute at @e[tag=slot.1,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:1b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.tag.Customnbt.id
    execute at @e[tag=slot.2,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:2b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.tag.Customnbt.id
    execute at @e[tag=slot.3,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:3b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.tag.Customnbt.id
    execute at @e[tag=slot.4,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:4b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.tag.Customnbt.id
    execute at @e[tag=slot.5,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:5b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.tag.Customnbt.id
    execute at @e[tag=slot.6,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:6b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.tag.Customnbt.id
    execute at @e[tag=slot.7,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:7b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.tag.Customnbt.id
    execute at @e[tag=slot.8,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:8b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.tag.Customnbt.id
#何も入っていないデータは消す
    data remove storage craft: data.ingredients[{id:"none"}]
#配列の長さをスコアに
    execute store result score $length buffer run data get storage craft: data.ingredients
#レシピ特定
    function main:craft/specify

#アイテム召喚
    execute if score $success buffer matches 1 at @e[tag=slot.4,distance=..10] run function main:craft/common

#効果音
    playsound block.deepslate.break master @p ~ ~ ~ 1 1.5
    playsound entity.goat.long_jump master @p ~ ~ ~ 2 1.2
    playsound entity.item.pickup master @p ~ ~ ~ 2 1.2
    playsound item.armor.equip_gold master @p ~ ~ ~ 2 2

#リセット
    scoreboard players reset $success buffer
    scoreboard players reset $length buffer
    tag @s remove crafted
    data remove storage craft: data
    advancement revoke @s only main:craft/interact/craft
