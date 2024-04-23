# クリックされたinteractionを実行者としてスロット処理
    execute store result score #click_time buffer run time query gametime
    execute at @s[advancements={main:craft/crafting/interact={left=true}}] as @e[distance=..5,tag=crafting] store result score @s timestamp run data get entity @s attack.timestamp
    execute at @s[advancements={main:craft/crafting/interact={right=true}}] as @e[distance=..5,tag=crafting] store result score @s timestamp run data get entity @s interaction.timestamp
    execute at @s as @e[tag=crafting,distance=..5] if score @s timestamp = #click_time buffer run tag @s add crafting.target
    execute as @e[tag=crafting.target] run function main:craft/crafting/slot/pick
# リセット
    scoreboard players reset #click_time buffer
    advancement revoke @s only main:craft/crafting/interact
    tag @e remove crafting.target
