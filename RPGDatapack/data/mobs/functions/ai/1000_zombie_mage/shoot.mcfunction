#ぱーん！
    data modify storage magic: Data.Tags set value ["magic","magic.attack","magic.ranged","spd.normal","mob_summoned"]
    data modify storage magic: Data.Time set value 60
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute at @s run function main:combat/attack/magic/summon
    function mobs:ai/1000_zombie_mage/reset_timer
#近くにプレイヤーがいるなら飛びのく
    execute if entity @p[distance=..6] run function mobs:ai/1000_zombie_mage/backstep
