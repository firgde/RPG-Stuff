#Customnbtをスコアに
    #説明文
    execute store result score #Lore buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.LoreCount
    execute store result score #itemtype buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.ItemType
    #増加ｽﾃｰﾀｽ
    execute store result score #atkbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.atk
    execute store result score #magbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.mag
    execute store result score #dexbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.dex
    execute store result score #hpbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.hp
    execute store result score #intbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.int
    execute store result score #defbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.def
    execute store result score #spdbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.spd
    execute store result score #crtbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.crt
    execute store result score #lukbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.luk
    execute store result score #concbonus buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.status.conc
    #レア度
    execute store result score #rarity buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.rarity
    #耐久度
    execute store result score #durability buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.Durability
    execute store result score #maxdurability buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.MaxDurability
    #ｴﾝﾁｬﾝﾄの数
    execute store result score #enchantcount buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.Enchantments
    #スキルの有無
    execute store result score #hasskill buffer run data get block ~ ~ ~ Items[0].tag.Customnbt.HasSkill
