#bonus値リセット
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
#無印ステータスリセット
    scoreboard players operation @s atk = @s atk_base
    scoreboard players operation @s mag = @s mag_base
    scoreboard players operation @s dex = @s dex_base
    scoreboard players operation @s max_hp = @s max_hp_base
    scoreboard players operation @s int = @s int_base
    scoreboard players operation @s def = @s def_base
    scoreboard players operation @s spd = @s spd_base
    scoreboard players operation @s crt = @s crt_base
    scoreboard players operation @s luk = @s luk_base
    scoreboard players operation @s acc = @s acc_base
#ステータス取得
    execute if entity @s[nbt={SelectedItem:{tag:{Customnbt:{weapon:1b}}}}] run function status:_general/get/mainhand
    execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Customnbt:{offhandOnly:1b}}}]}] run function status:_general/get/offhand
    execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Customnbt:{armorType:"helmet",armor:1b}}}]}] run function status:_general/get/helmet
    execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{Customnbt:{armorType:"chestplate",armor:1b}}}]}] run function status:_general/get/chestplate
    execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{Customnbt:{armorType:"leggings",armor:1b}}}]}] run function status:_general/get/leggings
    execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{Customnbt:{armorType:"boots",armor:1b}}}]}] run function status:_general/get/boots
#attributeや他のスコアに関与するもの
    function status:hp/update
    attribute @s generic.attack_damage base set 0.0
    function status:int/calc
    execute unless score @s spd_prv = @s spd run function status:spd/update
    execute unless score @s luk_prv = @s luk run function status:luk/calc
    function status:acc/calc
#いらん棒は消す
    clear @s stick{CustomModelData:1}
#エリアごとに採掘できるアイテムの設定
    execute if entity @s[nbt={SelectedItem:{tag:{Customnbt:{tool:1b}}}}] run function main:collect/mining/modify_mineables
#クエストブックなら内容を更新
    execute if entity @s[nbt={SelectedItem:{tag:{Customnbt:{id:8999}}}}] run tag @s add book
    execute unless entity @s[nbt={SelectedItem:{tag:{Customnbt:{id:8999}}}}] run tag @s remove book
    execute unless entity @s[nbt={SelectedItem:{tag:{Customnbt:{id:8999}}}}] if entity @e[tag=quest_book,distance=..5,tag=open] run function main:social/ui/close
#0より小さいなら調整
    scoreboard players operation @s atk > $0 const
    scoreboard players operation @s mag > $0 const
    scoreboard players operation @s dex > $0 const
    scoreboard players operation @s max_hp > $0 const
    scoreboard players operation @s int > $0 const
    scoreboard players operation @s def > $0 const
    scoreboard players operation @s spd > $0 const
    scoreboard players operation @s crt > $0 const
    scoreboard players operation @s luk > $0 const
    scoreboard players operation @s acc > $0 const
#リセット
    advancement revoke @s only status:equipped
