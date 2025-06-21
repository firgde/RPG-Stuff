# 基本データの設定
    data merge entity @s {Tags:["magic"],item:{id:"minecraft:stick",count:1,components:{item_model:"air"}}}

###メインハンドとオフハンドからitem_displayのitem.tagにデータ代入
    # 魔術攻撃はこの時点で属性を定めておく
    data modify entity @s item.components."minecraft:custom_data".Element.Type append from storage combat: data.magic[0].Element.Type
    data modify entity @s item.components."minecraft:custom_data".Element.Debuff append from storage combat: data.magic[0].Element.Debuff
    execute unless data storage combat: data.magic[0].Element.Type run data modify entity @s item.components."minecraft:custom_data".Element.Type append value 0
    execute unless data storage combat: data.magic[0].Element.Type run data modify entity @s item.components."minecraft:custom_data".Element.Debuff append value {}
    data modify entity @s item.components."minecraft:custom_data".Element.Type append from storage combat: data.magic[1].Element.Type
    data modify entity @s item.components."minecraft:custom_data".Element.Debuff append from storage combat: data.magic[1].Element.Debuff
    # componentの属性をスコアに代入
    execute store result score #main_element buffer run data get entity @s item.components."minecraft:custom_data".Element.Type[0]
    execute store result score #side_element buffer run data get entity @s item.components."minecraft:custom_data".Element.Type[1]
    # 属性を二つ検知したら合成
    execute unless score #main_element buffer matches 0 unless score #side_element buffer matches 0 run function main:combat/attack/magic/summon/element/combine
    # なければ存在する方に属性を絞り、仮ストレージにデータ移動
    #メインハンドが属性を持っている場合
    execute unless score #main_element buffer matches 0 if score #side_element buffer matches 0 run data modify storage buffer: data.Element set from entity @s item.components."minecraft:custom_data".Element.Type[0]
    #オフハンドが属性を持っている場合
    execute if score #main_element buffer matches 0 unless score #side_element buffer matches 0 run data modify storage buffer: data.Element set from entity @s item.components."minecraft:custom_data".Element.Type[1]
    # 属性が全くなければそのまま一般タグ
    execute if score #main_element buffer matches 0 if score #side_element buffer matches 0 run tag @s add magic.generic

    # タグに変換する
    execute if data storage buffer: data run function main:combat/attack/magic/summon/element/get
    # 氷単体意外は音
    execute unless entity @s[tag=magic.ice,tag=!magic.combined] run playsound block.amethyst_block.chime player @a ~ ~ ~ 1000 1.5
    execute unless entity @s[tag=magic.ice,tag=!magic.combined] run playsound block.amethyst_block.break player @a ~ ~ ~ 0.5 1.25
    execute unless entity @s[tag=magic.ice,tag=!magic.combined] run playsound block.soul_soil.break player @a ~ ~ ~ 0.5 1.8

    # 速度、飛ぶ時間などの設定
    data modify entity @s Tags append from storage combat: data.magic[0].Tags.Type
    function main:combat/attack/magic/summon/set_speed
    execute store result score @s flyTime run data get storage combat: data.magic[0].Time

    # 威力と集中を代入
    scoreboard players operation @s mag = @a mag
    scoreboard players operation @s acc = @a acc

# 向き補正
    execute at @a run tp @s ~ ~1.5 ~ ~ ~
    execute at @s run tp @s ^ ^ ^0.5
# 召喚時のホーミング
    execute at @s run function main:combat/attack/magic/homing/on_start/
# summonタグ消し
    tag @s remove magic.summon
