#タグ
    tag @s add enchanting
#ｽﾃｰﾀｽ更新
    function status:_general/get/update
#ルートテーブル万能説
    execute at @e[tag=enchanter] run loot replace block 0 -59 0 container.2 loot main:craft/enchantments/all
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
    execute store result score $atkbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.atk
    execute store result score $magbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.mag
    execute store result score $dexbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.dex
    execute store result score $hpbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.hp
    execute store result score $intbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.int
    execute store result score $defbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.def
    execute store result score $spdbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.spd
    execute store result score $crtbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.crt
    execute store result score $lukbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.luk
    execute store result score $concbonus buffer run data get block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.conc
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.atk int 1 run scoreboard players operation $atkbonus buffer += $atkbonus atk_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.mag int 1 run scoreboard players operation $magbonus buffer += $magbonus mag_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.dex int 1 run scoreboard players operation $dexbonus buffer += $dexbonus dex_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.hp int 1 run scoreboard players operation $hpbonus buffer += $hpbonus max_hp_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.int int 1 run scoreboard players operation $intbonus buffer += $intbonus int_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.def int 1 run scoreboard players operation $defbonus buffer += $defbonus def_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.spd int 1 run scoreboard players operation $spdbonus buffer += $spdbonus spd_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.crt int 1 run scoreboard players operation $crtbonus buffer += $crtbonus crt_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.luk int 1 run scoreboard players operation $lukbonus buffer += $lukbonus luk_enchant
    execute store result block ~ ~-1 ~ Items[{Slot:4b}].tag.Customnbt.Enchantbuff.conc int 1 run scoreboard players operation $concbonus buffer += $concbonus conc_enchant
#ｱｲﾃﾑﾓﾃﾞｨﾌｧｲｱを適用
    data modify storage item: Item set from block ~ ~-1 ~ Items[{Slot:4b}]
    data remove storage item: Item.Slot
    data modify storage item: Item.tag.Enchant.Text set from block 0 -59 0 Items[{Slot:2b}].tag.Enchant.Text
    #デバッグ
    data modify storage buffer: Item set from storage item: Item
    item replace block 0 -59 0 container.0 from block ~ ~-1 ~ container.4
    execute positioned 0 -59 0 run function items:get_data
    execute positioned 0 -59 0 run function items:set_data/
    item replace block ~ ~-1 ~ container.4 from block 0 -59 0 container.0
#リセット
    tag @s remove enchanting
