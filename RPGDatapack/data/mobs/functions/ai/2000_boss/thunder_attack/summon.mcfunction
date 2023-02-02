#雷を10回召喚
    scoreboard players add $rec buffer 1
    execute at @p run summon armor_stand ~ ~ ~ {Tags:["thunder","spawn"],Marker:1b,Invisible:1b,PortalCooldown:9}
    execute as @e[tag=thunder,tag=spawn] at @s run function mobs:ai/2000_boss/thunder_attack/prepare
#再帰...?
    execute if score $rec buffer matches ..9 run schedule function mobs:ai/2000_boss/thunder_attack/summon 20t
#時間調整
    execute if score $rec buffer matches 1 run scoreboard players set @e[tag=boss,scores={mob_id=2000}] aiTimer 400
    execute if score $rec buffer matches 1 as @e[tag=boss,scores={mob_id=2000}] run function mobs:ai/2000_boss/reset_timer
#リセット
    execute if score $rec buffer matches 10.. run scoreboard players set $rec buffer 0
