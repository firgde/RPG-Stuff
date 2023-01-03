#スキルのクールダウン時間設定
    scoreboard players set @s sideSkillCooldown 40
#補正
    tp @s @s
#AEC召喚
    summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,DurationOnUse:0,Age:4,Effects:[{Id:25,Amplifier:22b,Duration:3,ShowParticles:0b},{Id:28,Amplifier:0b,Duration:10,ShowParticles:0b}]}
#スライム召喚
    scoreboard players set @s recCount 25
    execute rotated ~ 0 positioned ^ ^-0.5 ^0.25 run function main:combat/skills/side/summon_slime
#スライム/kill
    tp @e[tag=backstep] 0 -100 0
    kill @e[tag=backstep]
#成功しました
    scoreboard players set @s sideSuccess 1
