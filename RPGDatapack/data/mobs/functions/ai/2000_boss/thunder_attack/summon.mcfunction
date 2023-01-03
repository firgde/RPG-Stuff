#雷を10回召喚
    scoreboard players add $rec buffer 1
    execute at @p run summon armor_stand ~ ~ ~ {Tags:["thunder","spawn"],Marker:1b,Invisible:1b,PortalCooldown:9}
    execute as @e[tag=thunder,tag=spawn] at @s run function mobs:ai/2000_boss/thunder_attack/prepare
#再起...?
    execute if score $rec buffer matches ..9 run schedule function mobs:ai/2000_boss/thunder_attack/summon 20t
#リセット
    execute if score $rec buffer matches 10.. run scoreboard players set $rec buffer 0
