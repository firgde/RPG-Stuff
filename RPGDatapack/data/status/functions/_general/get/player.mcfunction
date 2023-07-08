# bonus値リセット
    scoreboard players set @s atk_bonus 0
    scoreboard players set @s mag_bonus 0
    scoreboard players set @s dex_bonus 0
    scoreboard players set @s max_hp_bonus 0
    scoreboard players set @s int_bonus 0
    scoreboard players set @s def_bonus 0
    scoreboard players set @s spd_bonus 0
    scoreboard players set @s crt_bonus 0
    scoreboard players set @s luk_bonus 0
    scoreboard players set @s acc_bonus 0
# ステータス取得
    execute if entity @s[nbt={SelectedItem:{tag:{Customnbt:{weapon:1b}}}}] run function status:_general/get/mainhand
    execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Customnbt:{offhandOnly:1b}}}]}] run function status:_general/get/offhand
    execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Customnbt:{armorType:"helmet",armor:1b}}}]}] run function status:_general/get/helmet
    execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{Customnbt:{armorType:"chestplate",armor:1b}}}]}] run function status:_general/get/chestplate
    execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{Customnbt:{armorType:"leggings",armor:1b}}}]}] run function status:_general/get/leggings
    execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{Customnbt:{armorType:"boots",armor:1b}}}]}] run function status:_general/get/boots
# attributeや他のスコアに関与するもの
    function status:hp/update
    attribute @s generic.attack_damage base set 0.0
    function status:int/calc
    execute unless score @s spd_prv = @s spd run function status:spd/update
    execute unless score @s luk_prv = @s luk run function status:luk/calc
    function status:acc/calc
# ダメージ処理のために無敵に
    effect give @s resistance infinite 255 true
# 餓死しないために満腹度回復
    effect give @s saturation infinite 255 true
# 体力を常に最大体力に合わせる為に回復
    effect give @s instant_health infinite 28 true
# いらん棒は消す
    clear @s stick{CustomModelData:1}
# エリアごとに採掘できるアイテムの設定
    execute if entity @s[nbt={SelectedItem:{tag:{Customnbt:{tool:1b}}}}] run function main:collect/mining/modify_mineables
# UI持ちアイテムなら内容を更新
    execute unless predicate asset:social/ui/holding_purse if entity @e[tag=purse,distance=..5,tag=open] run function main:social/ui/close
    execute unless predicate asset:social/ui/holding_quest_book if entity @e[tag=quest_book,distance=..5,tag=open] run function main:social/ui/close
