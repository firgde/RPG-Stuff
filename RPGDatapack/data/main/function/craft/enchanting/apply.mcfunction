# タグ
    tag @s add not_give
# int・acc更新
    function status:update/
# エンチャントレベル算出
##EnchantLv = Enchantability + ranInt(0, int) + ranInt(0, acc/4) + Items + 1
    #Enchantability
    execute store result score #enchantLv buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".Enchantability
    #+1
    scoreboard players add #enchantLv buffer 1
    #ranInt(0, int)
    execute store result score #rngMax buffer run scoreboard players operation #enchantLv int = @s int
    execute if score #enchantLv int matches 0 store result score #rngMax buffer run scoreboard players set #enchantLv int 1
    execute store result storage rng: data.Max int 1 run scoreboard players get #rngMax buffer
    data modify storage rng: data.Min set value 0
    function main:get_rng with storage rng: data
    scoreboard players operation #rng buffer %= #enchantLv int
    scoreboard players operation #enchantLv buffer += #rng buffer
    #ranInt(0, acc/4)
    scoreboard players operation #enchantLv acc = @s acc
    execute store result score #rngMax buffer run scoreboard players operation #enchantLv acc /= #4 const
    execute if score #enchantLv acc matches 0 store result score #rngMax buffer run scoreboard players set #enchantLv acc 1
    execute store result storage rng: data.Max int 1 run scoreboard players get #rngMax buffer
    data modify storage rng: data.Min set value 0
    function main:get_rng with storage rng: data
    scoreboard players operation #rng buffer %= #enchantLv acc
    scoreboard players operation #enchantLv buffer += #rng buffer
    #四隅の素材
    execute store result score #slot1 buffer run data get block ~ ~ ~ Items[{Slot:1b,components:{"minecraft:custom_data":{enchanting_material:1b}}}].components."minecraft:custom_data".enchanting_amplifier
    execute store result score #slot3 buffer run data get block ~ ~ ~ Items[{Slot:3b,components:{"minecraft:custom_data":{enchanting_material:1b}}}].components."minecraft:custom_data".enchanting_amplifier
    execute store result score #slot5 buffer run data get block ~ ~ ~ Items[{Slot:5b,components:{"minecraft:custom_data":{enchanting_material:1b}}}].components."minecraft:custom_data".enchanting_amplifier
    execute store result score #slot7 buffer run data get block ~ ~ ~ Items[{Slot:7b,components:{"minecraft:custom_data":{enchanting_material:1b}}}].components."minecraft:custom_data".enchanting_amplifier
    scoreboard players operation #enchantLv buffer += #slot1 buffer
    scoreboard players operation #enchantLv buffer += #slot3 buffer
    scoreboard players operation #enchantLv buffer += #slot5 buffer
    scoreboard players operation #enchantLv buffer += #slot7 buffer
    # tellraw @a[limit=1] {"score": {"name": "#enchantLv","objective": "buffer"}}
# 四つのアイテムから候補のプールを作成
    #エンチャントされるアイテムに対応していないエンチャントは除外するために、アイテム種を数値から文字列に
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{ItemType:1} if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{weaponType:0} run data modify storage craft:enchanting temp.item_type set value "sword"
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{ItemType:1} if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{weaponType:1} run data modify storage craft:enchanting temp.item_type set value "hammer"
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{ItemType:1} if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{weaponType:2} run data modify storage craft:enchanting temp.item_type set value "wand"
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{ItemType:1} if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{weaponType:3} run data modify storage craft:enchanting temp.item_type set value "bow"
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{ItemType:1} if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{weaponType:4} run data modify storage craft:enchanting temp.item_type set value "dagger"
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{ItemType:2} run data modify storage craft:enchanting temp.item_type set value "accessory"
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{armor:true} run data modify storage craft:enchanting temp.item_type set value "armor"
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"{tool:true} run data modify storage craft:enchanting temp.item_type set value "tool"

    data modify storage craft:enchanting data.pool set value []
    data modify storage craft:enchanting data.items[{Slot:1b}] merge from block ~ ~ ~ Items[{Slot:1b}].components."minecraft:custom_data".enchantment_data
    data modify storage craft:enchanting data.items[{Slot:3b}] merge from block ~ ~ ~ Items[{Slot:3b}].components."minecraft:custom_data".enchantment_data
    data modify storage craft:enchanting data.items[{Slot:5b}] merge from block ~ ~ ~ Items[{Slot:5b}].components."minecraft:custom_data".enchantment_data
    data modify storage craft:enchanting data.items[{Slot:7b}] merge from block ~ ~ ~ Items[{Slot:7b}].components."minecraft:custom_data".enchantment_data
    # tellraw @a {storage:"craft:enchanting",nbt:"data.items"}
    execute store result storage craft:enchanting temp.Slot int 1 run scoreboard players set #rec buffer 1
    function main:craft/enchanting/pool/rec
    # tellraw @a {storage:"craft:enchanting",nbt:"data.pool"}
    # tellraw @a {storage:"craft:enchanting",nbt:"data.ability.pool"}
    data remove storage craft:enchanting temp

# スキルエンチャントの場合は先に付与
    execute if data storage craft:enchanting data.ability.pool run function main:craft/enchanting/ability/apply
# 再帰function
    #エンチャントレベル / 10 + 1回抽選
    scoreboard players operation #rec buffer = #enchantLv buffer
    scoreboard players operation #rec buffer /= #10 const
    scoreboard players add #rec buffer 1
    #抽選回数 < 候補数
    execute store result score #len buffer run data get storage craft:enchanting data.pool
    scoreboard players operation #rec buffer < #len buffer
    execute if score #len buffer matches 1.. run function main:craft/enchanting/rec
# アイテム減らす
    execute if items block ~ ~ ~ container.1 *[custom_data~{enchanting_material:1b}] run item modify block ~ ~ ~ container.1 {function:"set_count",count:{type:"constant",value:-1},add:1b}
    execute if items block ~ ~ ~ container.3 *[custom_data~{enchanting_material:1b}] run item modify block ~ ~ ~ container.3 {function:"set_count",count:{type:"constant",value:-1},add:1b}
    execute if items block ~ ~ ~ container.5 *[custom_data~{enchanting_material:1b}] run item modify block ~ ~ ~ container.5 {function:"set_count",count:{type:"constant",value:-1},add:1b}
    execute if items block ~ ~ ~ container.7 *[custom_data~{enchanting_material:1b}] run item modify block ~ ~ ~ container.7 {function:"set_count",count:{type:"constant",value:-1},add:1b}
# エンチャントがついたなら演出
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".enchantments.data run data modify block ~ ~ ~ Items[{Slot:4b}].components."minecraft:enchantment_glint_override" set value true
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".enchantments.data run playsound block.enchantment_table.use master @s ~ ~ ~ 1 1
    execute if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".enchantments.data run particle enchant ~ ~2 ~ 0.25 0.25 0.25 2 50
# リセット
    data remove block 0 -59 0 Items
    data remove storage craft:enchanting data
    data remove storage craft:enchanting temp
    scoreboard players reset #modify_count buffer
    scoreboard players reset #rng buffer
    scoreboard players reset #rec buffer
    scoreboard players reset #enchantLv
    scoreboard players reset #slot1 buffer
    scoreboard players reset #slot3 buffer
    scoreboard players reset #slot5 buffer
    scoreboard players reset #slot7 buffer
    scoreboard players reset #len buffer
    tag @s remove not_give
