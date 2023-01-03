#Customnbtの耐久値を減算
    execute store result score @s durability run data get entity @s Inventory[{Slot:102b}].tag.Customnbt.Durability
    scoreboard players remove @s durability 1
    scoreboard players operation $durability buffer = @s durability
    execute store result storage item: Item.tag.Customnbt.Durability int 1 run scoreboard players get $durability buffer
    item modify entity @s armor.chest main:update_durability
#0なら壊す
    execute if score @s durability matches ..0 run function main:combat/durability/break
#アイテムの耐久ゲージを更新
    execute store result score @s maxDurability run data get entity @s Inventory[{Slot:102b}].tag.Customnbt.MaxDurability
    scoreboard players operation $maxdurability buffer = @s maxDurability
    #中身は金の防具
    scoreboard players operation @s durability *= $100 const
    execute store result score @s dur_ratio run scoreboard players operation @s durability /= @s maxDurability
    scoreboard players set @s buffer 100
    execute store result storage item: Data.Damage int 1 run scoreboard players operation @s buffer -= @s dur_ratio
#代入
    data modify storage item: Item set from entity @s Inventory[{Slot:102b}]
    item modify entity @s armor.chest main:update_durability_display
    item replace block 0 -59 0 container.0 from entity @s armor.chest
    execute positioned 0 -59 0 run function items:get_data
    item modify entity @s armor.chest items:lore/text
    item modify entity @s armor.chest items:lore/status
    execute if score $enchantcount buffer matches 1.. run function items:set_data/loop_chest
    item modify entity @s armor.chest items:lore/info
#リセット
    data remove storage item: durability
    data remove storage item: Item
