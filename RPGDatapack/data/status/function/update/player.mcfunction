# ステータス取得
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:1b}}}}] run function status:update/slot/mainhand
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tool:1b}}}}] run function status:update/slot/mainhand
    execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{offhandOnly:1b}}}]}] run function status:update/slot/offhand
    execute if entity @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_data":{armorType:"helmet",armor:1b}}}]}] run function status:update/slot/helmet
    execute if entity @s[nbt={Inventory:[{Slot:102b,components:{"minecraft:custom_data":{armorType:"chestplate",armor:1b}}}]}] run function status:update/slot/chestplate
    execute if entity @s[nbt={Inventory:[{Slot:101b,components:{"minecraft:custom_data":{armorType:"leggings",armor:1b}}}]}] run function status:update/slot/leggings
    execute if entity @s[nbt={Inventory:[{Slot:100b,components:{"minecraft:custom_data":{armorType:"boots",armor:1b}}}]}] run function status:update/slot/boots
# attributeや他のスコアに関与するもの
    function status:hp/update
    attribute @s generic.attack_damage base set 0.0
    execute unless score #prevInt buffer = @s int run function status:int/calc
    scoreboard players operation #spdBuffer buffer = @s spd
    scoreboard players add #spdBuffer buffer 100
    execute store result storage status: data.spd double 0.001 run scoreboard players get #spdBuffer buffer
    execute store result storage status: data.luk double 0.001 run scoreboard players get @s luk
    function status:spd/calc with storage status: data
    function status:luk/calc with storage status: data
    function status:acc/calc
# ダメージ処理のために無敵に
    effect give @s resistance infinite 255 true
# 餓死しないために満腹度回復
    effect give @s saturation infinite 255 true
# 体力を常に最大体力に合わせる為に回復
    effect give @s instant_health infinite 28 true
# いらん棒は消す
    clear @s stick[custom_model_data=1]
# エリアごとに採掘できるアイテムの設定
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tool:1b}}}}] run function main:collect/mining/modify_mineables
# UI持ちアイテムなら内容を更新
    execute unless predicate asset:social/ui/holding_purse if entity @e[tag=purse,distance=..5,tag=open] run function main:social/ui/close
    execute unless predicate asset:social/ui/holding_quest_book if entity @e[tag=quest_book,distance=..5,tag=open] run function main:social/ui/close
# リセット
    scoreboard players reset #atk_equipment buffer
    scoreboard players reset #mag_equipment buffer
    scoreboard players reset #dex_equipment buffer
    scoreboard players reset #hp_equipment buffer
    scoreboard players reset #int_equipment buffer
    scoreboard players reset #def_equipment buffer
    scoreboard players reset #spd_equipment buffer
    scoreboard players reset #crt_equipment buffer
    scoreboard players reset #luk_equipment buffer
    scoreboard players reset #acc_equipment buffer
    scoreboard players reset #resistance_melee_equipment buffer
    scoreboard players reset #resistance_magic_equipment buffer
    scoreboard players reset #resistance_ranged_equipment buffer
    scoreboard players reset #resistance_fire_equipment buffer
    scoreboard players reset #resistance_ice_equipment buffer
    scoreboard players reset #resistance_wind_equipment buffer
    scoreboard players reset #resistance_thunder_equipment buffer
    data remove storage status: data
