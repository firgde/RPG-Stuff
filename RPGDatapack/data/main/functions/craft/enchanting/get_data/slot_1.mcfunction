# Slot:1bのエンチャント加算値を取得
    #それぞれのステータス
    execute store result score $ebonusatk buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.atk
    execute store result score $ebonusmag buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.mag
    execute store result score $ebonusdex buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.dex
    execute store result score $ebonushp buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.hp
    execute store result score $ebonusint buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.int
    execute store result score $ebonusdef buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.def
    execute store result score $ebonusspd buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.spd
    execute store result score $ebonuscrt buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.crt
    execute store result score $ebonusluk buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.luk
    execute store result score $ebonusacc buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.acc

    #属性+αエンチャントの出やすさ
    execute store result score $efire buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.extra.fire
    execute store result score $eice buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.extra.ice
    execute store result score $ethunder buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.extra.thunder
    execute store result score $ewind buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.extra.wind

    #スキルエンチャントの出やすさ
    execute store result score $eskill buffer run data get block ~ ~-1 ~ Items[{Slot:1b}].tag.Customnbt.EnchantingData.bonus.skill
# 加算
    scoreboard players operation $ebonusatk atk_enchant += $ebonusatk buffer
    scoreboard players operation $ebonusmag mag_enchant += $ebonusmag buffer
    scoreboard players operation $ebonusdex dex_enchant += $ebonusdex buffer
    scoreboard players operation $ebonushp hp_enchant += $ebonushp buffer
    scoreboard players operation $ebonusint int_enchant += $ebonusint buffer
    scoreboard players operation $ebonusdef def_enchant += $ebonusdef buffer
    scoreboard players operation $ebonusspd spd_enchant += $ebonusspd buffer
    scoreboard players operation $ebonuscrt crt_enchant += $ebonuscrt buffer
    scoreboard players operation $ebonusluk luk_enchant += $ebonusluk buffer
    scoreboard players operation $ebonusacc acc_enchant += $ebonusacc buffer
# ディスペンサーから削除
    data remove block ~ ~-1 ~ Items[{Slot:1b}]
