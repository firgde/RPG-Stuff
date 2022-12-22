#割合に合わせてHP調整
    scoreboard players operation #hpbuffer buffer = @s max_hp
    scoreboard players operation #hpbuffer buffer *= @s hp_ratio
    execute store result score @s hp run scoreboard players operation #hpbuffer buffer /= #100 const
    scoreboard players operation @s hp < @s max_hp
#AttributeModifierリセット
    attribute @s generic.max_health modifier remove 1-0-0-0-5
    attribute @s generic.max_health modifier remove 1-0-0-0-4
    attribute @s generic.max_health modifier remove 1-0-0-0-3
    attribute @s generic.max_health modifier remove 1-0-0-0-2
    attribute @s generic.max_health modifier remove 1-0-0-0-1
    attribute @s generic.max_health modifier remove 1-0-0-0-0
#AttributeModifier適用
    scoreboard players operation #hpbuffer buffer = @s hp_ratio
    attribute @s generic.max_health base set 0.0
    scoreboard players operation #hpbuffer buffer /= #5 const
    scoreboard players operation #hpbuffer buffer *= #2^26 const
    execute if score #hpbuffer buffer matches ..-1 run attribute @s generic.max_health modifier add 1-0-0-0-5 "5" 32.0 add
    scoreboard players operation #hpbuffer buffer *= #2 const
    execute if score #hpbuffer buffer matches ..-1 run attribute @s generic.max_health modifier add 1-0-0-0-4 "4" 16.0 add
    scoreboard players operation #hpbuffer buffer *= #2 const
    execute if score #hpbuffer buffer matches ..-1 run attribute @s generic.max_health modifier add 1-0-0-0-3 "3" 8.0 add
    scoreboard players operation #hpbuffer buffer *= #2 const
    execute if score #hpbuffer buffer matches ..-1 run attribute @s generic.max_health modifier add 1-0-0-0-2 "2" 4.0 add
    scoreboard players operation #hpbuffer buffer *= #2 const
    execute if score #hpbuffer buffer matches ..-1 run attribute @s generic.max_health modifier add 1-0-0-0-1 "1" 2.0 add
    scoreboard players operation #hpbuffer buffer *= #2 const
    execute if score #hpbuffer buffer matches ..-1 run attribute @s generic.max_health modifier add 1-0-0-0-0 "0" 1.0 add

    effect give @s instant_health 1 25 true
