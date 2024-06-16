# クリックされたinteractionを実行者としてスロット処理
    execute store result score #click_time buffer run time query gametime
    execute at @s[advancements={main:craft/alchemy/interact={left=true}}] as @e[distance=..5,tag=alchemy.slot] store result score @s timestamp run data get entity @s attack.timestamp
    execute at @s[advancements={main:craft/alchemy/interact={right=true}}] as @e[distance=..5,tag=alchemy.slot] store result score @s timestamp run data get entity @s interaction.timestamp
    execute at @s as @e[tag=alchemy.slot,distance=..5] if score @s timestamp = #click_time buffer run tag @s add alchemy.target
    execute as @e[tag=alchemy.target] run function main:craft/alchemy/slot/pick
# リセット
    scoreboard players reset #click_time buffer
    advancement revoke @s only main:craft/alchemy/interact
    tag @e remove alchemy.target
