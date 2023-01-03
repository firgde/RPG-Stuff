#クラフトしました
    tag @s add crafted
#完成品の確認
    scoreboard players set $craft buffer 3
    scoreboard players set $craft add_pt 1
    execute at @s as @e[tag=crafter_middle,sort=nearest,limit=1] at @s store result score $craft2 buffer run data get block ~ ~-1 ~ Items
#確認
    execute if score $craft buffer = $craft2 buffer run function items:1002_iron_sword
    execute at @s as @e[tag=crafter_middle,sort=nearest,limit=1] at @s if score $craft buffer = $craft2 buffer run function main:craft/common
#リセット
    advancement revoke @s only main:craft/iron_sword
    tag @s remove crafted
