#再帰回数を減らす
    scoreboard players remove $rec buffer 1
#ルートテーブル万能説
    loot replace block 0 -59 0 container.2 loot main:craft/enchantments/all
#追加アイテムが入っているなら追加で要素を増加
    execute if data block ~ ~-1 ~ Items[{Slot:1b,tag:{Customnbt:{EnchantMaterial:1b}}}] run function main:craft/enchanting/get_data/slot_1
    execute if data block ~ ~-1 ~ Items[{Slot:3b,tag:{Customnbt:{EnchantMaterial:1b}}}] run function main:craft/enchanting/get_data/slot_3
    execute if data block ~ ~-1 ~ Items[{Slot:5b,tag:{Customnbt:{EnchantMaterial:1b}}}] run function main:craft/enchanting/get_data/slot_5
    execute if data block ~ ~-1 ~ Items[{Slot:7b,tag:{Customnbt:{EnchantMaterial:1b}}}] run function main:craft/enchanting/get_data/slot_7
#ｴﾝﾁｬﾝﾄ適用
    data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantments append from block 0 -59 0 Items[{Slot:2b}].tag.Enchant
    execute store result score $enchantcount buffer if data block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantments
    data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.Enchantments set value [{}]
#ｽﾃｰﾀｽ更新
    execute store result score $atkbonus atk_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.atk
    execute store result score $magbonus mag_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.mag
    execute store result score $dexbonus dex_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.dex
    execute store result score $hpbonus max_hp_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.hp
    execute store result score $intbonus int_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.int
    execute store result score $defbonus def_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.def
    execute store result score $spdbonus spd_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.spd
    execute store result score $crtbonus crt_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.crt
    execute store result score $lukbonus luk_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.luk
    execute store result score $concbonus conc_enchant run data get block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Buffs.conc
    #追加アイテムから加算値を取得
    scoreboard players operation $atkbonus atk_enchant += $ebonusatk atk_enchant
    scoreboard players operation $magbonus mag_enchant += $ebonusmag mag_enchant
    scoreboard players operation $dexbonus dex_enchant += $ebonusdex dex_enchant
    scoreboard players operation $hpbonus max_hp_enchant += $ebonushp max_hp_enchant
    scoreboard players operation $intbonus int_enchant += $ebonusint int_enchant
    scoreboard players operation $defbonus def_enchant += $ebonusdef def_enchant
    scoreboard players operation $spdbonus spd_enchant += $ebonusspd spd_enchant
    scoreboard players operation $crtbonus crt_enchant += $ebonuscrt crt_enchant
    scoreboard players operation $lukbonus luk_enchant += $ebonusluk luk_enchant
    scoreboard players operation $concbonus conc_enchant += $ebonusconc conc_enchant
    #元の値を取得
    execute store result score $atkbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.atk
    execute store result score $magbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.mag
    execute store result score $dexbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.dex
    execute store result score $hpbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.hp
    execute store result score $intbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.int
    execute store result score $defbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.def
    execute store result score $spdbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.spd
    execute store result score $crtbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.crt
    execute store result score $lukbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.luk
    execute store result score $concbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.conc
    #エンチャントで増加する値を加算
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.atk int 1 run scoreboard players operation $atkbonus buffer += $atkbonus atk_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.mag int 1 run scoreboard players operation $magbonus buffer += $magbonus mag_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.dex int 1 run scoreboard players operation $dexbonus buffer += $dexbonus dex_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.hp int 1 run scoreboard players operation $hpbonus buffer += $hpbonus max_hp_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.int int 1 run scoreboard players operation $intbonus buffer += $intbonus int_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.def int 1 run scoreboard players operation $defbonus buffer += $defbonus def_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.spd int 1 run scoreboard players operation $spdbonus buffer += $spdbonus spd_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.crt int 1 run scoreboard players operation $crtbonus buffer += $crtbonus crt_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.luk int 1 run scoreboard players operation $lukbonus buffer += $lukbonus luk_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.status.conc int 1 run scoreboard players operation $concbonus buffer += $concbonus conc_enchant
#ｱｲﾃﾑﾓﾃﾞｨﾌｧｲｱを適用
    data modify storage item: Item set from block ~ ~-1 ~ Items[{Slot:4b}]
    data remove storage item: Item.Slot
    data modify storage item: Item.tag.Enchant.Text set from block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Text
    item replace block 0 -59 0 container.0 from block ~ ~-1 ~ container.4
    execute positioned 0 -59 0 run function items:get_data
    execute positioned 0 -59 0 run function items:set_data/
    item replace block ~ ~-1 ~ container.4 from block 0 -59 0 container.0
#再帰
    execute if score $rec buffer matches 1.. run function main:craft/enchanting/rec
