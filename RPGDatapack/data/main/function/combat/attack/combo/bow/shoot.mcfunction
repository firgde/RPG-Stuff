# Ownerをプレイヤーに設定
    data modify entity @s Owner set from entity @p UUID
# 攻撃力と属性を設定
    #ダメージ減衰
    scoreboard players operation @s dex = @p dex
    scoreboard players operation @s dex *= #6 const
    scoreboard players operation @s dex /= #10 const
    #属性
    scoreboard players set #mainElement buffer 0
    scoreboard players set #sideElement buffer 0
    execute store result score #mainElement buffer run data get entity @p SelectedItem.components."minecraft:custom_data".Element.Type
    execute store result score #sideElement buffer run data get entity @p Inventory[{Slot:-106b,components:{"minecraft:custom_data":{offhandOnly:1b}}}].components."minecraft:custom_data".Element.Type
    execute unless score #mainElement buffer matches 0 if score #sideElement buffer matches 0 run scoreboard players operation #element buffer = #mainElement buffer
    execute if score #mainElement buffer matches 0 unless score #sideElement buffer matches 0 run scoreboard players operation #element buffer = #sideElement buffer
    execute if score #element buffer matches 1.. run function main:combat/attack/ranged/element/get
    execute unless score #mainElement buffer matches 0 unless score #sideElement buffer matches 0 run function main:combat/attack/ranged/element/combine
# 0 0 0を基準にして+0.05の位置に_vectorを召喚
    execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.5 {Tags:["vector"]}
# mov:に_vectorのPosを保存
    data modify storage mov: mov set from entity @n[tag=vector] Pos
# 対象のEntityにmov:をそのままセット
    data modify entity @s Motion set from storage mov: mov
# リセット
    scoreboard players reset #mainElement buffer
    scoreboard players reset #sideElement buffer
    scoreboard players reset #element buffer
    scoreboard players reset #xpower buffer
    scoreboard players reset #ypower buffer
    scoreboard players reset #zpower buffer
    data remove storage mov: mov
    kill @e[tag=vector]
