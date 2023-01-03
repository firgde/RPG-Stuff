#クールダウン更新
    execute store result score $timeused buffer run time query gametime
    execute store result storage magic: CoolDown int 1 run scoreboard players get $timeused buffer
    item modify entity @s weapon.mainhand main:magic/get_cooldown
#本体
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["magic"]}
    #データを代入する
    data modify entity @e[limit=1,sort=nearest,tag=magic] Tags set from storage magic: Data.Tags
    data modify entity @e[limit=1,sort=nearest,tag=magic] Tags append from storage magic: Data.offhand.Tag
    tag @e[limit=1,sort=nearest,tag=magic,tag=!magic.fire,tag=!magic.ice,tag=!magic.thunder,tag=!magic.wind] add magic.generic
    data modify entity @e[limit=1,sort=nearest,tag=magic] ArmorItems set from storage magic: Data.offhand.ArmorItems
    #向き補正
    tp @e[tag=magic,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
    execute as @e[tag=magic,sort=nearest,limit=1] at @s run tp @s ^ ^ ^0.5
#時間設定
    execute store result score @e[tag=magic,sort=nearest,limit=1] flyTime run data get storage magic: Data.Time
#スコアの設定
    scoreboard players operation @e[tag=magic,sort=nearest,limit=1] playerID = @s playerID
    scoreboard players operation @e[tag=magic,sort=nearest,limit=1] mag = @s mag
    execute as @e[tag=magic,sort=nearest,limit=1] run scoreboard players operation @s mag += @s mag_bonus
