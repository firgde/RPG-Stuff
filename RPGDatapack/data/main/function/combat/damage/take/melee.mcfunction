# 属性を取得
    execute store result score #main_element buffer run data get entity @s equipment.mainhand.components."minecraft:custom_data".Element.Type
    execute store result score #side_element buffer run data get entity @s equipment.offhand.components."minecraft:custom_data".Element.Type
    # execute if data entity @s equipment.mainhand.components."minecraft:custom_data".Element.Type store result score #damage_type buffer run data get entity @s equipment.mainhand.components."minecraft:custom_data".Element.Type
    # execute unless data entity @s equipment.mainhand.components."minecraft:custom_data".Element.Type if data entity @s equipment.offhand.components{"minecraft:custom_data":{offhandOnly:1b}} store result score #damage_type buffer run data get entity @s equipment.offhand.components."minecraft:custom_data".Element.Type
# 近接攻撃を受けました
    tag @a add hurt.melee
    scoreboard players operation @a damage = @s atk
