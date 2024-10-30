# クリックされたinteraction特定
    execute store result score #click_time buffer run time query gametime
    execute at @s as @e[distance=..5,tag=gimmick] store result score @s timestamp run data get entity @s interaction.timestamp
    execute at @s as @e[tag=gimmick,distance=..5] if score @s timestamp = #click_time buffer run tag @s add gimmick.target
# gimmick.targetからギミック実行
    execute as @n[tag=gimmick.target] run function #asset:explore/gimmick
# リセット
    scoreboard players reset #click_time buffer
    advancement revoke @s only main:explore/trigger_gimmick
    tag @n[tag=gimmick.target] remove gimmick.target
