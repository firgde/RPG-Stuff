# タグ
    tag @s add enchanting
# int・acc更新
    function status:_general/get/update
# エンチャントレベル算出
###EnchantLv = Enchantability + ranInt(0, int) + ranInt(0, acc/4) + Items + 1
    #Enchantability
    execute store result score $enchantLv buffer run data get block ~ ~ ~ Items[{Slot:4b}].tag.Customnbt.Enchantability
    #+1
    scoreboard players add $enchantLv buffer 1
    #ranInt(0, int)
    execute store result score $rngMax buffer run scoreboard players operation $enchantLv int = @s int
    execute if score $enchantLv int matches 0 store result score $rngMax buffer run scoreboard players set $enchantLv int 1
    function main:get_rng
    scoreboard players operation $rng buffer %= $enchantLv int
    scoreboard players operation $enchantLv buffer += $rng buffer
    #ranInt(0, acc/4)
    scoreboard players operation $enchantLv acc = @s acc
    execute store result score $rngMax buffer run scoreboard players operation $enchantLv acc /= $4 const
    execute if score $enchantLv acc matches 0 store result score $rngMax buffer run scoreboard players set $enchantLv acc 1
    function main:get_rng
    scoreboard players operation $rng buffer %= $enchantLv acc
    scoreboard players operation $enchantLv buffer += $rng buffer
    #Items
    execute store result score $slot1 buffer run data get block ~ ~ ~ Items[{Slot:1b,tag:{Customnbt:{EnchantMaterial:1b}}}].tag.Customnbt.EnchantBoost
    execute store result score $slot3 buffer run data get block ~ ~ ~ Items[{Slot:3b,tag:{Customnbt:{EnchantMaterial:1b}}}].tag.Customnbt.EnchantBoost
    execute store result score $slot5 buffer run data get block ~ ~ ~ Items[{Slot:5b,tag:{Customnbt:{EnchantMaterial:1b}}}].tag.Customnbt.EnchantBoost
    execute store result score $slot7 buffer run data get block ~ ~ ~ Items[{Slot:7b,tag:{Customnbt:{EnchantMaterial:1b}}}].tag.Customnbt.EnchantBoost
    item modify block ~ ~ ~ container.1 main:craft/remove
    item modify block ~ ~ ~ container.3 main:craft/remove
    item modify block ~ ~ ~ container.5 main:craft/remove
    item modify block ~ ~ ~ container.7 main:craft/remove
    scoreboard players operation $enchantLv buffer += $slot1 buffer
    scoreboard players operation $enchantLv buffer += $slot3 buffer
    scoreboard players operation $enchantLv buffer += $slot5 buffer
    scoreboard players operation $enchantLv buffer += $slot7 buffer
    # tellraw @p {"score": {"name": "$enchantLv","objective": "buffer"}}

# 再帰function
    #エンチャントレベル / 10 + 1回実行
    scoreboard players operation $rec buffer = $enchantLv buffer
    scoreboard players operation $rec buffer /= $10 const
    scoreboard players add $rec buffer 1
    function main:craft/enchanting/rec
# エンチャントがついたなら演出
    execute if data block ~ ~ ~ Items[{Slot:4b}].tag.Customnbt.Enchantments run data modify block ~ ~ ~ Items[{Slot:4b}].tag.Enchantments set value [{}]
    execute if data block ~ ~ ~ Items[{Slot:4b}].tag.Customnbt.Enchantments run playsound block.enchantment_table.use master @s ~ ~ ~ 1 1
    execute if data block ~ ~ ~ Items[{Slot:4b}].tag.Customnbt.Enchantments run particle enchant ~ ~2 ~ 0.25 0.25 0.25 2 50 normal
# リセット
    scoreboard players reset $rng buffer
    scoreboard players reset $rec buffer
    scoreboard players reset $enchantLv
    scoreboard players reset $slot1 buffer
    scoreboard players reset $slot3 buffer
    scoreboard players reset $slot5 buffer
    scoreboard players reset $slot7 buffer
    tag @s remove enchanting
