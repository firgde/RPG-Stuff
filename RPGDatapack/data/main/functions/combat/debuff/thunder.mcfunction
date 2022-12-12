#他のデバフを上書き
    tag @s remove debuff.fire
    tag @s remove debuff.ice
    tag @s remove debuff.wind
    data modify entity @s HasVisualFire set value 0b
#痺れる
    execute store result score #buff debuffTimer run data get storage damage: Damage.debuffTimer
    scoreboard players operation @s debuffTimer += #buff debuffTimer
#バフ取得
    execute store result score #buff buffer run data get storage damage: Damage.CustomDamage.buffAmount
    scoreboard players operation @s[tag=!debuff.thunder] spd_buff < #buff buffer
    scoreboard players operation @s[tag=!debuff.thunder] spd += @s spd_buff
    execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base float 0.01 run scoreboard players get @s spd
#判定付けます
    tag @s add debuffed
    tag @s add debuff.thunder
