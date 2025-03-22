# 属性を取得
    execute store result score #main_element buffer run data get entity @s HandItems[0].components."minecraft:custom_data".Element.Type
    execute store result score #side_element buffer run data get entity @s HandItems[1].components."minecraft:custom_data".Element.Type
    # execute if data entity @s HandItems[0].components."minecraft:custom_data".Element.Type store result score #damage_type buffer run data get entity @s HandItems[0].components."minecraft:custom_data".Element.Type
    # execute unless data entity @s HandItems[0].components."minecraft:custom_data".Element.Type if data entity @s HandItems[1].components{"minecraft:custom_data":{offhandOnly:1b}} store result score #damage_type buffer run data get entity @s HandItems[1].components."minecraft:custom_data".Element.Type
# 近接攻撃を受けました
    tag @p add hurt.melee
    scoreboard players operation @p damage = @s atk
