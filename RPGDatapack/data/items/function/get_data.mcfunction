# custom_dataをスコアに
    #説明文
    execute store result score #Lore buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".LoreCount
    execute store result score #itemType buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".ItemType
    #増加ｽﾃｰﾀｽ
    execute store result score #atkBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.atk
    execute store result score #magBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.mag
    execute store result score #dexBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.dex
    execute store result score #hpBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.hp
    execute store result score #intBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.int
    execute store result score #defBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.def
    execute store result score #spdBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.spd
    execute store result score #crtBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.crt
    execute store result score #lukBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.luk
    execute store result score #accBonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".status.acc
    execute store result score #resistance_melee_bonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".resistance.melee
    execute store result score #resistance_magic_bonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".resistance.magic
    execute store result score #resistance_ranged_bonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".resistance.ranged
    execute store result score #resistance_fire_bonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".resistance.fire
    execute store result score #resistance_ice_bonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".resistance.ice
    execute store result score #resistance_wind_bonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".resistance.wind
    execute store result score #resistance_thunder_bonus buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".resistance.thunder
    #ｴﾝﾁｬﾝﾄの数
    execute store result score #enchantcount buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".Enchantments
    #属性
    execute store result score #element buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".Element.Type
    #スキルの有無
    execute store result score #hasAbility buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".HasAbility
    #耐久度
    execute store result score #durability buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".Durability
    execute store result score #maxDurability buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:max_damage"
    execute if items block 0 -59 0 container.0 warped_fungus_on_a_stick[max_damage=100] run scoreboard players set #maxDurability buffer 100
    #レア度
    execute store result score #rarity buffer run data get block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".rarity
