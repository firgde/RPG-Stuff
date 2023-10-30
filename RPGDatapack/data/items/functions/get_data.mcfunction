# Customnbtをスコアに
    #説明文
    execute store result score $Lore buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.LoreCount
    execute store result score $itemType buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.ItemType
    #増加ｽﾃｰﾀｽ
    execute store result score $atkBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.atk
    execute store result score $magBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.mag
    execute store result score $dexBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.dex
    execute store result score $hpBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.hp
    execute store result score $intBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.int
    execute store result score $defBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.def
    execute store result score $spdBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.spd
    execute store result score $crtBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.crt
    execute store result score $lukBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.luk
    execute store result score $accBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.status.acc
    #ｴﾝﾁｬﾝﾄの数
    execute store result score $enchantcount buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.Enchantments
    #属性
    execute store result score $element buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.Element.Type
    #スキルの有無
    execute store result score $hasskill buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.HasSkill
    #耐久度
    execute store result score $durability buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.Durability
    execute store result score $maxDurability buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.MaxDurability
    #レア度
    execute store result score $rarity buffer run data get block ~ ~ ~ Items[{Slot:0b}].tag.Customnbt.rarity
