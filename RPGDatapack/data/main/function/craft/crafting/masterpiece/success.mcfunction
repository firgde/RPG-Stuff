
    tag @a[limit=1] add not_give

# 各種補正ステータスを+(25 + (dex * 1.5 + acc * 2 + luk) / 8)%
    scoreboard players operation #dex buffer = @a[limit=1] dex
    scoreboard players operation #dex buffer *= #3 const
    scoreboard players operation #dex buffer /= #2 const
    scoreboard players operation #amplifier buffer += #dex buffer

    scoreboard players operation #acc buffer = @a[limit=1] acc
    scoreboard players operation #acc buffer *= #2 const
    scoreboard players operation #amplifier buffer += #acc buffer

    scoreboard players operation #amplifier buffer += @a[limit=1] luk
    scoreboard players operation #amplifier buffer /= #8 const
    execute store result storage craft:temp amplifier float 0.01 run scoreboard players add #amplifier buffer 125

    data modify storage item: Item set from block 0 -59 0 Items[{Slot:0b}]
    function main:craft/crafting/masterpiece/amplify with storage craft:temp
    function items:set_data/
# アイテム名にアイコン追加
    item modify block 0 -59 0 container.0 {"function":"set_name","entity":"this","name":[{"translate":"item.ui.masterpiece","color":"white","italic":false},{"nbt":"Items[{Slot:0b}].components.\"minecraft:item_name\"","block":"0 -59 0","interpret":true}],"target":"item_name"}
# 演出
    execute at @n[tag=slot.4] run particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0.01 25
    execute at @n[tag=slot.4] run particle trial_spawner_detection ~ ~ ~ 0.2 0.2 0.2 0 25
    execute at @n[tag=slot.4] run particle flash ~ ~ ~ 0.0 0.0 0.0 0 1
    execute as @a[limit=1] at @n[tag=slot.4] run playsound block.trial_spawner.open_shutter block @s ~ ~ ~ 1.0 2.0
    execute as @a[limit=1] at @n[tag=slot.4] run playsound block.vault.insert_item_fail block @s ~ ~ ~ 1.0 0.5
    execute as @a[limit=1] at @n[tag=slot.4] run playsound block.anvil.destroy block @s ~ ~ ~ 1.0 2.0
# リセット
    scoreboard players reset #dex buffer
    scoreboard players reset #acc buffer
    tag @a[limit=1] remove not_give
    data remove storage craft:temp amplifier
