#足元にディスc...ディスペンサー
    setblock ~ ~ ~ dispenser
#loot_table万能説
    loot replace block ~ ~ ~ container.0 loot asset:collect/mining/all
#種類を分ける
    execute if data block ~ ~ ~ Items[{tag:{Customnbt:{type:"coal_ore"}},id:"minecraft:stick"}] run setblock ~ ~ ~ coal_ore
    execute if data block ~ ~ ~ Items[{tag:{Customnbt:{type:"iron_ore"}},id:"minecraft:stick"}] run setblock ~ ~ ~ iron_ore
    execute if data block ~ ~ ~ Items[{tag:{Customnbt:{type:"diamond_ore"}},id:"minecraft:stick"}] run setblock ~ ~ ~ diamond_ore
    execute if data block ~ ~ ~ Items[{tag:{Customnbt:{type:"magma_stone"}},id:"minecraft:stick"}] run setblock ~ ~ ~ magma_block
#クールダウンをセット
    execute store result entity @s PortalCooldown int 1 run scoreboard players get @s buffer
